//
//  SQLiteReader.swift
//  Covid19NumbersWidgetDriver
//
//  Created by Dirk Scheidt on 30.10.20.
//

import Foundation
import SQLite3
import os.log


class SQLiteReader: NSObject {
    private let printQueryResultSwitch: Bool = false
    
    private enum ExecutionType: String {
        case AllCountiesForTwoDays = "AllCountiesForTwoDays"
        case AllCountiesAllDays = "AllCountiesForAllDays"
        case OneCountyAllDays = "OneCountyAllDays"
        case Undefined = "Undefined"
    }
    
    public let serialQueue = DispatchQueue(label: "com.CovidNumbers.serialQueue.SQLITE")
    
    private let keepTimeSpanOfDays = AppDefaultConfiguration.keepTimeSpanOfDaysDefault
    
    private let SQLITE_TRANSIENT = unsafeBitCast(-1, to: sqlite3_destructor_type.self)
    
    private let SQLITE_CONSTRAINT_UNIQUE: Int = 2067
    private let SQLITE_CONSTRAINT_PRIMARYKEY: Int = 1555
    private let SQLITE_OPEN_READONLY: Int32 = 1
    private let selectFieldsAndTable: String =
        "SELECT id, OBJECTID, GEN, BEZ, BL, EWZ, cases, cases_per_100k, cases7_per_100k, last_update, datetime1000, dupprevent, idLandkreis, deaths, recovered, neueFaelle, neueFaelle_per_100k, date1000 FROM cases "
    
    private let orderClause_Alphabetic:    String = " ORDER BY datetime1000 DESC, GEN ASC, BEZ ASC;"
    private let orderClause_casesPer100k:  String = " ORDER BY datetime1000 DESC, cases_per_100k DESC, GEN ASC, BEZ ASC;"
    private let orderClause_cases1Per100k: String = " ORDER BY datetime1000 DESC, neueFaelle_per_100k DESC, GEN ASC, BEZ ASC;"
    private let orderClause_cases7Per100k: String = " ORDER BY datetime1000 DESC, cases7_per_100k DESC, GEN ASC, BEZ ASC;"
    
    private var db: OpaquePointer?
    private(set) var dbIsOpen: Bool = false
    
    private var actualDBName: String { get { AppDefaultConfiguration.dbNameSQlite } }
    
    private func CloseDataBase() {
        if self.db != nil {
            sqlite3_close(db)
            self.db = nil
            self.dbIsOpen = false
        }
    }

    
    public func CloseDataBaseAwait() {
        serialQueue.sync { [weak self] in
            guard let self = self else { return }
            self.CloseDataBase()
        }
    }
    
    
    deinit {
        self.CloseDataBase()
    }
    
    public func OpenDataBaseAwait() -> Bool{

        var result = false
        
        serialQueue.sync { [weak self] in
            guard let self = self else { return }
            
            result = self.CreateOpenOrOpenDBFile()

        }
        
        return result
    }
    
    
    private func getFileURL() -> URL?{
        Logger.funcStart.notice("getFileURL")
        var fileURL: URL?
        
        let containerURL = FileManager.default.containerURL(forSecurityApplicationGroupIdentifier: AppDefaultConfiguration.containerSharedGroup)
        if let _ : URL = containerURL {
            fileURL = containerURL!.appendingPathComponent(self.actualDBName)
            Logger.log.notice("FilePath of DB: \(fileURL!.path, privacy: .public)")
        }
        return fileURL
    }
    
    
    private func CreateOpenOrOpenDBFile() -> Bool {
        var result: Bool = false
        if self.db == nil {
            if let fileURL = self.getFileURL() {
                
                // Open DB or Create and Open it.
                if sqlite3_open(fileURL.path, &self.db) != SQLITE_OK {
                    Logger.log.error("Error opening database")
                } else {
                    
                    result = true
                    // Now the Database is Open
                    self.dbIsOpen = result
                }
            
            } else { return false }
        } else { return true }
        return result
    }
    
    
    private func PerformSQLRequest(query: String, sqlParameterAssignment: (OpaquePointer?)->Bool = { queryStatement in return true }) -> Bool {
        Logger.funcStart.notice("PerformSQLRequest")
        var result: Bool = false
        
        if query.isEmpty == true {
            Logger.log.error("Query is empty.")
        }
        
        let queryString = query
        
        var queryStatement: OpaquePointer? = nil
        if sqlite3_prepare_v2(db, queryString, -1, &queryStatement, nil) == SQLITE_OK {
            
            if sqlParameterAssignment(queryStatement) == false {
                Logger.log.error("SqlParameterAssignment error.")
                result = false
            } else {
                let retCode = sqlite3_step(queryStatement)
                
                if retCode == SQLITE_DONE {
                    Logger.log.notice("Query perfomed.")
                    result = true
                }
                else {
                    Logger.log.error("Execution error.")
                }
            }
        } else {
            Logger.log.error("Query statement could not be prepared.")
        }
        sqlite3_finalize(queryStatement)
        return result
    }
    
    
    public func GetFavoritesAwait()-> [String:String]{
        var result = [String:String]()
        serialQueue.sync { [weak self] in
            guard let self = self else { return }
            result = self.GetFavorites()
        }
        return result
    }
    
    public func GetFavoritesSelectionListAwait()-> [String:String]{
        var result = [String:String]()
        serialQueue.sync { [weak self] in
            guard let self = self else { return }
            result = self.GetFavoritesSelectionList()
        }
        return result
    }
    
    
    private func GetFavoritesSelectionList()-> [String:String]{
        var favorites = [String:String]()

        let queryString = "SELECT favorites.idLandkreis, cases.GEN, cases.BEZ FROM favorites LEFT JOIN cases on favorites.idLandkreis = cases.idLandkreis GROUP BY favorites.idLandkreis, cases.GEN, cases.BEZ"
        
        var stmt:OpaquePointer?
        
        if sqlite3_prepare(db, queryString, -1, &stmt, nil) != SQLITE_OK{
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error preparing read: \(errmsg)")
            return favorites
        }
        var unsafeTextPointer: UnsafePointer<UInt8>?
        while(sqlite3_step(stmt) == SQLITE_ROW){
            unsafeTextPointer = sqlite3_column_text(stmt, 0)
            let idLandkreis = unsafeTextPointer != nil ? String(cString: unsafeTextPointer!) : ""
            
            unsafeTextPointer = sqlite3_column_text(stmt, 1)
            let gen = unsafeTextPointer != nil ? String(cString: unsafeTextPointer!) : ""
            
            unsafeTextPointer = sqlite3_column_text(stmt, 2)
            let bez = unsafeTextPointer != nil ? String(cString: unsafeTextPointer!) : ""
            
            let displayName = gen + (bez != "" ? " " : "") + bez
            
            favorites[idLandkreis] = displayName
        }
        sqlite3_finalize(stmt)
        return favorites
    }
    
    
    private func GetFavorites()-> [String:String]{
        var favorites = [String:String]()

        let queryString = "SELECT idLandKreis FROM favorites"
        
        var stmt:OpaquePointer?
        
        if sqlite3_prepare(db, queryString, -1, &stmt, nil) != SQLITE_OK{
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error preparing read: \(errmsg)")
            return favorites
        }
        
        while(sqlite3_step(stmt) == SQLITE_ROW){
            let unsafeTextPointer: UnsafePointer<UInt8>? = sqlite3_column_text(stmt, 0)
            let idLandkreis = unsafeTextPointer != nil ? String(cString: unsafeTextPointer!) : ""
            
            favorites[idLandkreis] = idLandkreis
        }
        sqlite3_finalize(stmt)
        return favorites
    }
    

    

    public func CountFavoritesAwait()-> Int64{
        Logger.funcStart.notice("CountFavorites" )
        
        var count: Int64 = 0
        serialQueue.sync { [weak self] in
            guard let _ = self else { return }
            let queryString = "SELECT COUNT(*) FROM favorites"
            
            var stmt:OpaquePointer?
            
            if sqlite3_prepare(db, queryString, -1, &stmt, nil) != SQLITE_OK{
                let errmsg = String(cString: sqlite3_errmsg(db)!)
                Logger.log.notice("Error preparing read: \(errmsg, privacy: .public)" )
                count = 0
                return
            }
            
            while(sqlite3_step(stmt) == SQLITE_ROW){
                count = sqlite3_column_int64(stmt, 0)
                break
            }
            sqlite3_finalize(stmt)
        }
        return count
    }
    
    
    public func GetAllDaysOfOneCountyForDisplayAwait(idLandkreis: String, orderBy: SortType = SortType.alphabetic) -> CovidCasesPerObjectIDSP {
        Logger.funcStart.notice("GetAllDaysOfOneCountyForDisplayAwait" )
        var result = CovidCasesPerObjectIDSP()
        serialQueue.sync { [weak self] in
            guard let self = self else { return }
            result = self.GetDaysOfCovidCasesForDisplay(idLandkreis: idLandkreis, executionType: .OneCountyAllDays, orderBy: orderBy)
        }
        return result
    }
    
    
    public func GetAllDaysOfCovidCasesForDisplayAwait(orderBy: SortType = SortType.alphabetic)->CovidCasesPerObjectIDSP {
        Logger.funcStart.notice("GetAllDaysOfCovidCasesForDisplayAwait" )
        var result = CovidCasesPerObjectIDSP()
        serialQueue.sync { [weak self] in
            guard let self = self else { return }
            result = self.GetDaysOfCovidCasesForDisplay(executionType: .AllCountiesAllDays, orderBy: orderBy)
        }
        return result
    }
    
    
    private func GetDaysOfCovidCasesForDisplay(idLandkreis: String = "", executionType: ExecutionType, orderBy: SortType = SortType.alphabetic)->CovidCasesPerObjectIDSP {
        Logger.funcStart.notice("GetLastTwoDaysOfCovidCasesForDisplay with sortorder '\(orderBy.rawValue, privacy: .public)' and executionType '\(executionType.rawValue, privacy: .public)'")
        
        var sortPart: String = ""
        switch orderBy {
            case SortType.alphabetic:
                sortPart = orderClause_Alphabetic
                
            case SortType.casesPer100k:
                sortPart = orderClause_casesPer100k
                
            case SortType.cases1Per100k:
                sortPart = orderClause_cases1Per100k
                
            case SortType.cases7Per100k:
                sortPart = orderClause_cases7Per100k
        }
        

        // Grouping and filling
        var cCase: CovidCaseP = CovidCaseP()
        let covidCasesP = CovidCasesPerObjectIDSP()
        var queryStatement: OpaquePointer? = nil
        var level: Int = 1
        var sortSet : [String: CovidCasesPerObjectIDP] = [String: CovidCasesPerObjectIDP]()
        
        // Favorites
        var favorites = self.GetFavorites()
        
        // Get the newest DateTime1000 and strip the timepart.
        let newestDateTime1000: Int64 = self.GetNewestDateTime1000() ?? 0
        let newestDate1000: Int64 = DTAI.init(dateTimeAsInteger: newestDateTime1000).datePartAsInteger
        let oneDay1000: Int64 = 60 * 60 * 24 * 1000
        let theDayBefore = newestDate1000 - oneDay1000
        
        // Summaries
        let summary = CovidCasesPerObjectIDP()
        var queryStatementString: String = self.selectFieldsAndTable + " WHERE 1 = 2 " + sortPart // Prevent any results!
        
        // Get the Items
        switch executionType {
            case .AllCountiesForTwoDays:
                queryStatementString =  self.selectFieldsAndTable + " WHERE date1000 = ? OR date1000 = ? " + sortPart
                
            case .AllCountiesAllDays:
                queryStatementString =  self.selectFieldsAndTable + " WHERE 1 = 1 " + sortPart
                
            case .OneCountyAllDays:
                if idLandkreis.isEmpty == true {
                    Logger.log.error("'idLandkreis' not set. Returning.")
                    return covidCasesP
                }
                queryStatementString =  self.selectFieldsAndTable + " WHERE idLandkreis = ? " + sortPart
                
            default:
                queryStatementString = self.selectFieldsAndTable + " WHERE 1 = 2 " + sortPart // Ensure no results.
                Logger.log.error("No specific where-statment definded. This leads into no results.")
        }

        if sqlite3_prepare_v2(db, queryStatementString, -1, &queryStatement, nil) == SQLITE_OK {
            switch executionType {
                case .AllCountiesForTwoDays:
                    sqlite3_bind_int64(queryStatement, 1, Int64(newestDate1000))
                    sqlite3_bind_int64(queryStatement, 2, Int64(theDayBefore))
                    
                case .OneCountyAllDays:
                    sqlite3_bind_text(queryStatement, 1, strdup(idLandkreis) , -1, SQLITE_TRANSIENT)
                
                default:
                    break
            }
            
            level = 1
            while level > 0 {
                
                
                // Check and Receive new Data
                if level == 1 {
                    if sqlite3_step(queryStatement) == SQLITE_ROW {
                        level = 2
                    } else {
                        level = 0
                    }
                }
                
                
                // Create new case-Object and get the Current-Object-ID
                if level == 2 {
                    cCase = CreateReturnCCaseObject(queryStatement)
                    level = 3
                }
                
                
                // Check if a new Group is needed.
                if level == 3 {
                    if let _ = sortSet[cCase.idLandkreis] {
                        // Nothing to do.
                    } else {
                        // Create new COUNTY and append it to the returnValue and to sort Helper
                        let newOne  = CovidCasesPerObjectIDP()
                        
                        SetUpTimeSpan(startDate1000: newestDate1000, county: newOne)
                        sortSet[cCase.idLandkreis] = newOne
                        covidCasesP.cases.append(newOne)
                    }
                    level = 4
                }
                
                
                // Insert Item
                if level == 4 {
                    if let localCounty = sortSet[cCase.idLandkreis] {
                        
                        ImportCaseToCounty(county: localCounty, caseForImport: cCase)
                        //localCounty.cases.append(cCase)
                        
                        // Apply here stuff that belongs to all cCases, despite of the group.
                        
                        level = 1
                    }
                }

            }
            
            if covidCasesP.cases.count > 0 {
                // Fill the aggregations.
                
                // Das ist seltsam: Ich muß das Array zurückschieben, damit die daten da sind. Vermutlich weil es ein Array und kein Dict ist.
                var theFavoriteCounties = covidCasesP.casesFavorites
                for county in covidCasesP.cases {
                    FillAggregatedFieldsOfCounty(county: county, favoriteCounties: &theFavoriteCounties, favorites: &favorites)
                }
                covidCasesP.casesFavorites = theFavoriteCounties
                
                
                // Do summeries
                SetUpTimeSpanForSummary(startDate1000: newestDate1000, county: summary)
                
                // Hier jetzt durch alle Counties loopen und über alle Tage und dann die Simmen in Summary eintragen.
                var absoluteInfections7Days: Double = 0
                var absoluteEWZFor7Days: Int64 = 0
                var itemsProccessed = [Int](repeating: 0, count: self.keepTimeSpanOfDays)
                for oneCounty in covidCasesP.cases {  // Counties
                    if oneCounty.idLandkreis.isEmpty == false {
                        for index in (0 ... (summary.cases.count - 1)) {  // Days
                            summary.cases[index].cases = summary.cases[index].cases + oneCounty.cases[index].cases
                            summary.cases[index].cases_per_100k = summary.cases[index].cases_per_100k + oneCounty.cases[index].cases_per_100k

                            summary.cases[index].deaths = summary.cases[index].deaths + oneCounty.cases[index].deaths
                            summary.cases[index].genesen = summary.cases[index].genesen + oneCounty.cases[index].genesen
                            
                            summary.cases[index].newCases = summary.cases[index].newCases + oneCounty.cases[index].newCases
                            summary.cases[index].EWZ = summary.cases[index].EWZ + oneCounty.cases[index].EWZ
                            
                            if index == 0 {
                                absoluteInfections7Days = absoluteInfections7Days + oneCounty.cases[index].cases7_per_100k / 100000.00 * Double(oneCounty.cases[index].EWZ)
                                absoluteEWZFor7Days = absoluteEWZFor7Days + oneCounty.cases[index].EWZ
                            }
                            
                            itemsProccessed[index] += 1
                        }
                    }
                }
                
                var prev: Int = 0
                var passed: Bool = false
                
                for index in (0...(itemsProccessed.count - 1)) {
                    if itemsProccessed[index] == 0 {
                        continue
                    }
                    
                    if prev == 0 {
                        prev = itemsProccessed[index]
                    }
                    
                    if prev != itemsProccessed[index] {
                        passed = false
                        break
                    } else {
                        passed = true
                    }
                }
                
                if passed == true {
                    
                    for index in (0 ... (summary.cases.count - 1)).reversed() {
                        
                        // 1-Day-Incidence
                        summary.cases[index].newCases_per_100k = Double(summary.cases[index].newCases) / Double(summary.cases[index].EWZ) * 100000.00
                        summary.cases[index].cases1SummaryComplete = true
                        
                        // 7-Day-Incidence only for the latest day.
                        if index == 0 {
                            //summary.cases[index].cases7_per_100k = absoluteInfections7Days / Double(summary.cases[index].EWZ) * 100000.00
                            summary.cases[index].cases7_per_100k = absoluteInfections7Days / Double(absoluteEWZFor7Days) * 100000.00
                            summary.cases[index].cases7SummaryComplete = true
                        }
                        
                    }
                }
                
                summary.DisplayName = "Summary"
                covidCasesP.summaryForDays = summary
                covidCasesP.summary = summary.cases[0]
            }
            
        } else {
            Logger.log.error("SELECT statement could not be prepared")
        }
        sqlite3_finalize(queryStatement)

        return covidCasesP
    }
    
    
    private func ImportCaseToCounty(county: CovidCasesPerObjectIDP, caseForImport: CovidCaseP) {
        
        let date1000: Int64 = DTAI.init(dateTimeAsInteger: caseForImport.datetime1000).datePartAsInteger
        
        if let cCase = county.casesKeys[date1000] {
            //
            // Important: This means, only one set for a date is allowed, which by database sort is the latest one.
            //
            if cCase.id == 0 {
                cCase.id        = caseForImport.id
                cCase.OBJECTID  = caseForImport.OBJECTID
                cCase.GEN       = caseForImport.GEN
                cCase.BEZ       = caseForImport.BEZ
                cCase.BL        = caseForImport.BL
                cCase.EWZ       = caseForImport.EWZ
                cCase.cases     = caseForImport.cases
                cCase.cases_per_100k    = caseForImport.cases_per_100k
                cCase.cases7_per_100k   = caseForImport.cases7_per_100k
                cCase.last_update       = caseForImport.last_update
                cCase.datetime1000      = caseForImport.datetime1000
                cCase.dupprevent        = caseForImport.dupprevent
                cCase.deaths       = caseForImport.deaths
                cCase.genesen      = caseForImport.genesen
                cCase.idLandkreis        = caseForImport.idLandkreis
                cCase.newCases           = caseForImport.newCases
                cCase.newCases_per_100k  = caseForImport.newCases_per_100k
                cCase.date1000      = caseForImport.date1000
                cCase.GenerateDateTimeOfLastUpdate()
                cCase.GenerateDisplayName()
            }
        }
    }
    
    
    private func SetUpTimeSpan(startDate1000: Int64, county: CovidCasesPerObjectIDP) {
        var newStartDate : Int64 = 0

        for index in (1 ... self.keepTimeSpanOfDays) {
            if index == 1 {
                newStartDate = startDate1000
            } else {
                newStartDate = newStartDate - DTAI.aDayInSecondsAsInteger
            }

            let ccase = CovidCaseP()
            county.cases.append(ccase)
            county.casesKeys[newStartDate] = ccase
        }
    }
    
    
    private func SetUpTimeSpanForSummary(startDate1000: Int64, county: CovidCasesPerObjectIDP) {
        var newStartDate : Int64 = 0
        
        for index in (1 ... self.keepTimeSpanOfDays) {
            if index == 1 {
                newStartDate = startDate1000
            } else {
                newStartDate = newStartDate - DTAI.aDayInSecondsAsInteger
            }
        
            let ccase = CovidCaseP()
            ccase.datetime1000 = newStartDate
            county.cases.append(ccase)
            county.casesKeys[newStartDate] = ccase
        }
    }
    
    
    private func FillAggregatedFieldsOfCounty(county: CovidCasesPerObjectIDP, favoriteCounties: inout [CovidCasesPerObjectIDP], favorites: inout [String:String]) {
        if county.cases.count > 0 {
            county.idLandkreis = county.cases[0].idLandkreis
            county.DisplayName = county.cases[0].DisplayName
        }
        // Apply Favorites
        if let _ = favorites[county.idLandkreis] {
            county.IsFavorite = true
            favoriteCounties.append(county)
            favorites.removeValue(forKey: county.idLandkreis)
        }
    }
    
    
    private func CreateReturnCCaseObject(_ queryStatement: OpaquePointer?) -> CovidCaseP {
        var unsafeTextPointer: UnsafePointer<UInt8>?
        let ccase = CovidCaseP()
        
        ccase.id = sqlite3_column_int64(queryStatement, 0)
        ccase.OBJECTID = sqlite3_column_int64(queryStatement, 1)
        ccase.GEN = String(cString: sqlite3_column_text(queryStatement, 2))
        ccase.BEZ = String(cString: sqlite3_column_text(queryStatement, 3))
        ccase.BL = String(cString: sqlite3_column_text(queryStatement, 4))
        ccase.EWZ = sqlite3_column_int64(queryStatement, 5)
        ccase.cases = sqlite3_column_int64(queryStatement, 6)
        ccase.cases_per_100k = sqlite3_column_double(queryStatement, 7)
        ccase.cases7_per_100k = sqlite3_column_double(queryStatement, 8)
        
        unsafeTextPointer = sqlite3_column_text(queryStatement, 9)
        ccase.last_update = unsafeTextPointer != nil ? String(cString: unsafeTextPointer!) : ""
        
        ccase.datetime1000 = sqlite3_column_int64(queryStatement, 10)
        
        unsafeTextPointer = sqlite3_column_text(queryStatement, 11)
        ccase.dupprevent = unsafeTextPointer != nil ? String(cString: unsafeTextPointer!) : ""
        
        unsafeTextPointer = sqlite3_column_text(queryStatement, 12)
        ccase.idLandkreis = unsafeTextPointer != nil ? String(cString: unsafeTextPointer!) : ""
        
        ccase.deaths = sqlite3_column_int64(queryStatement, 13)
        ccase.genesen = sqlite3_column_int64(queryStatement, 14)
        
        ccase.newCases = sqlite3_column_int64(queryStatement, 15)
        ccase.newCases_per_100k = sqlite3_column_double(queryStatement, 16)
        
        ccase.date1000 = sqlite3_column_int64(queryStatement, 17)
        
        ccase.GenerateDateTimeOfLastUpdate()
        ccase.GenerateDisplayName()
        
        return ccase
    }
    
    private func GetNewestDateTime1000()-> Int64?{
        Logger.funcStart.notice("GetNewestDateTime1000")
        var result: Int64? = nil
        
        let queryString = "SELECT datetime1000 FROM cases ORDER BY datetime1000 DESC LIMIT 1"
        
        var stmt:OpaquePointer?
        
        if sqlite3_prepare(db, queryString, -1, &stmt, nil) != SQLITE_OK{
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            Logger.log.notice("Error preparing read: \(errmsg, privacy: .public)" )
            return nil
        }
        
        while(sqlite3_step(stmt) == SQLITE_ROW){
            result = sqlite3_column_int64(stmt, 0)
            Logger.log.notice("Received NewestDateTime1000 = '\(String(result ?? 0),privacy: .public)'" )
            break
        }
        sqlite3_finalize(stmt)
        
        return result
    }
}
