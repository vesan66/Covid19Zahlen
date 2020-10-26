//
//  GetCovidDataGermany.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 23.09.20.
//  Copyright © 2020 Dirk Scheidt. All rights reserved.
//

import Foundation
import os.log

#if DEBUG
//fileprivate var jsonDummyDataBase:              String = jsonDummyDataBase_20201010
//fileprivate var jsonDummyDataRecovered:         String = jsonDummyDataRecovered_20201010
//fileprivate var jsonDummyDataNewToday:          String = jsonDummyDataNewToday_20201010
//fileprivate var jsonDummyDataNewestTimeStamp:   String = jsonDummyDataNewestTimeStamp_20201010
fileprivate var jsonDummyDataBase:              String = jsonDummyDataBase_20201011
fileprivate var jsonDummyDataRecovered:         String = jsonDummyDataRecovered_20201011
fileprivate var jsonDummyDataNewToday:          String = jsonDummyDataNewToday_20201011
fileprivate var jsonDummyDataNewestTimeStamp:   String = jsonDummyDataNewestTimeStamp_20201011
#else
fileprivate var jsonDummyDataBase:              String = ""
fileprivate var jsonDummyDataRecovered:         String = ""
fileprivate var jsonDummyDataNewToday:          String = ""
fileprivate var jsonDummyDataNewestTimeStamp:   String = ""
#endif

// MARK:-
protocol GetCovidDataFromServer: NSObject {
    
    func GetCasesForCountiesAsync(ReceivedCases: @escaping ([CovidCase]?)->())
}


// MARK:-
protocol CheckForNewData: NSObject {
    
    func GetTimeStampOfData() -> TimeInterval
}


// MARK:-
class GetCovidDataFromServerBase: NSObject, GetCovidDataFromServer {

    fileprivate let forTesting: Bool = appMode.getOnlyDummyData()
    fileprivate var urlAddress: String { return "" }
    fileprivate var jsonDummyData: String { return ""}
    
    func GetCasesForCountiesAsync(ReceivedCases: @escaping ([CovidCase]?)->()){
        fatalError("Must be overriden")
    }
    
    fileprivate func printJsonDebug(jsonObject: [String : Any]?) {
        guard let prettyJsonData = try? JSONSerialization.data(withJSONObject: jsonObject!, options: .prettyPrinted) else {
            Logger.log.error("Error: Cannot convert JSON object to Pretty JSON data")
            return
        }
        guard let prettyPrintedJson = String(data: prettyJsonData, encoding: .utf8) else {
            Logger.log.error("Error: Could print JSON in String")
            return
        }
        if fullJasonPrint == true {
            print("Result: ", prettyPrintedJson)
        } else {
            Logger.log.notice("JSON received: '\(prettyPrintedJson.prefix(33), privacy: .public) ...'")
        }
    }
    
    fileprivate func buildParametersForRequest() -> [URLQueryItem] {
        fatalError("Must be overriden")
    }
    
    fileprivate func buildRequest() -> URLRequest? {
        guard var urlComponents = URLComponents(string: self.urlAddress) else {
            Logger.log.error("Error: cannot create URLCompontents")
            return nil
        }
        urlComponents.queryItems = self.buildParametersForRequest()
        
        guard let url = urlComponents.url else {
            print("Error: cannot create URL")
            return nil
        }
        print("Request created: ", url.absoluteString)
        
        // Create the url request
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        return request
    }
    
    fileprivate func DoRequestAsync(_ request: URLRequest, ReceivedJsonObject: @escaping ([String : Any]?)->()) {
        URLSession.shared.dataTask(with: request) { data, response, error in
            guard error == nil else {
                Logger.log.error("Error: error calling GET: \(error!.localizedDescription, privacy: .public)")
                //print(error!)
                return
            }
            guard let data = data else {
                Logger.log.error("Error: Did not receive data")
                return
            }
            guard let response = response as? HTTPURLResponse, (200 ..< 299) ~= response.statusCode else {
                Logger.log.error("Error: HTTP request failed")
                return
            }
            do {
                guard let jsonObject = try JSONSerialization.jsonObject(with: data) as? [String: Any] else {
                    Logger.log.error("Error: Cannot convert data to JSON object.")
                    return
                }
                DispatchQueue.main.async {
                    ReceivedJsonObject(jsonObject)
                }
            } catch {
                Logger.log.error("Error: Trying to convert JSON data to string.")
                return
            }
        }.resume()
    }
    
    fileprivate func GetTheData(ReceivedJsonObject: @escaping ([String : Any]?)->()) {
        if self.forTesting == false {
            if let request = self.buildRequest() {
                self.DoRequestAsync(request) { jsonObject in
                    ReceivedJsonObject(jsonObject)
                }
            }
        } else {
            self.GetDummyDataAsync() { jsonObject in
                ReceivedJsonObject(jsonObject)
            }
        }
    }
    
    fileprivate func GetDummyDataAsync(ReceivedJsonObject: @escaping ([String : Any]?)->()) {
        DispatchQueue.global(qos: .background).async {
            do {
                let jsonData = self.jsonDummyData.data(using: .utf8)!
                guard let jsonObject = try JSONSerialization.jsonObject(with: jsonData) as? [String: Any] else {
                    Logger.log.error("Error: Cannot convert data to JSON object.")
                    return
                }
                DispatchQueue.main.async {
                    ReceivedJsonObject(jsonObject)
                }
            } catch {
                Logger.log.error("Error: Trying to convert JSON data to string.")
                return
            }
        }
    }
}

// MARK:-
class GetCovidDataFromServerGermany: GetCovidDataFromServerBase {
    
    override var urlAddress: String { return "https://services7.arcgis.com/mOBPykOjAyBO2ZKk/arcgis/rest/services/RKI_Landkreisdaten/FeatureServer/0/query" }
    override var jsonDummyData: String { return jsonDummyDataBase}
    
    private lazy var qParam_where_all: URLQueryItem = URLQueryItem(name: "where", value: "1=1")
    //private lazy var qParam_where_all: URLQueryItem = URLQueryItem(name: "where", value: "GEN=" + "'Würzburg'")
    
    private lazy var qParam_countiesfields: URLQueryItem = URLQueryItem(name: "outFields", value: "BEZ,GEN")
    //private lazy var qParam_casesfields: URLQueryItem = URLQueryItem(name: "outFields", value: "OBJECTID,BL,BL_ID,BEZ,IBZ,GEN,COUNTY,last_update,cases7_per_100k,EWZ,cases,cases_per_100k")
    private lazy var qParam_casesfields: URLQueryItem = URLQueryItem(name: "outFields", value: "OBJECTID,BL,BL_ID,BEZ,IBZ,GEN,COUNTY,last_update,cases7_per_100k,EWZ,cases,cases_per_100k,RS,deaths")
    private lazy var qParam_outSR: URLQueryItem = URLQueryItem(name: "outSR", value: String(4326))
    private lazy var qParam_form: URLQueryItem = URLQueryItem(name: "f", value: "json")
    private lazy var qParam_returnGeometry: URLQueryItem = URLQueryItem(name: "returnGeometry", value: String(false))
    
    
    
    override fileprivate func buildParametersForRequest() -> [URLQueryItem] {
        var qItems: [URLQueryItem] = [URLQueryItem]()
        
        qItems.append(self.qParam_where_all)
        qItems.append(self.qParam_casesfields)
        qItems.append(self.qParam_outSR)
        qItems.append(self.qParam_form)
        qItems.append(self.qParam_returnGeometry)
        
        return qItems
    }

    override func GetCasesForCountiesAsync(ReceivedCases: @escaping ([CovidCase]?)->()) {
        Logger.funcStart.notice("GetCasesForCountiesAsync")
        self.GetTheData() { jsonObject in
            //self.printJsonDebug(jsonObject: jsonObject)
            if let jsonObject = jsonObject {
                var cases = self.mapJsonRespondObjectToSQLLiteObjects_Casese(jsonObject: jsonObject)
                if cases.count > 0 {
                    Logger.log.notice("Got \(cases.count, privacy: .public) on the base query.")
                    // We've got data from the primary query
                    // Now enricht the data:

                    let group = DispatchGroup()
                    group.enter()
                    group.enter()


                    // Receive recovered cases.
                    let supplement = GetCovidDataFromServerGermany_GetRecovered()
                    supplement.GetRecoveredCasesForCountiesAsync() { cases_suppl in
                        if let cases_suppl = cases_suppl {
                            Logger.log.notice("Got \(cases_suppl.count, privacy: .public) on the recovered query.")
                            for index in (0...(cases.count - 1)) {
                                if let c_suppl = cases_suppl[cases[index].idLandkreis] {
                                    if c_suppl.datetime1000 == cases[index].datetime1000 {
                                        cases[index].genesen = c_suppl.genesen
                                    }
                                }
                            }
                        }
                        group.leave()
                        Logger.log.notice("Recovered query done.")
                    }

                    // Receive newCases of the day.
                    let supplement_newCases = GetCovidDataFromServerGermany_NewCases()
                    supplement_newCases.GetNewCasesForCountiesAsync() { new_cases in
                        if let new_cases = new_cases {
                            Logger.log.notice("Got \(new_cases.count, privacy: .public) on the new infected query.")
                            for index in (0...(cases.count - 1)) {
                                if let c_suppl = new_cases[cases[index].idLandkreis] {
                                    if c_suppl.datetime1000 == cases[index].datetime1000 {
                                        cases[index].newCases = c_suppl.newCases
                                        if cases[index].EWZ > 0 {
                                            cases[index].newCases_per_100k = Double(c_suppl.newCases) / Double(cases[index].EWZ) * Double(100_000)
                                        }
                                    }
                                }
                            }
                        }
                        group.leave()
                        Logger.log.notice("New infected query done.")
                    }

                    group.notify(qos: .default, queue: .main, execute: {
                        ReceivedCases(cases)
                    })
                } else {
                    ReceivedCases(nil)
                }
            }
        }
    }
    
    private func mapJsonRespondObjectToSQLLiteObjects_Casese(jsonObject: [String : Any]) -> [CovidCase] {
        
        var items: [CovidCase] = [CovidCase]()
        
        let _ = self.printJsonDebug(jsonObject: jsonObject)
        
        if let features = jsonObject["features"] as? [Any] {  // "features" are the result itemS
            
            for feature in features {
                if let feature = feature as? NSDictionary {
                    if let attributes = feature["attributes"] as? NSDictionary {
                        var item: CovidCase = CovidCase()
                        item.id = 0
                        item.OBJECTID = attributes["OBJECTID"] as? Int64 ?? 0
                        item.GEN = attributes["GEN"] as? String ?? ""
                        item.BEZ = attributes["BEZ"] as? String ?? ""
                        item.BL = attributes["BL"] as? String ?? ""
                        item.EWZ = attributes["EWZ"] as? Int64 ?? 0
                        item.cases = attributes["cases"] as? Int64 ?? 0
                        item.cases_per_100k = attributes["cases_per_100k"] as? Double ?? 0
                        item.cases7_per_100k = attributes["cases7_per_100k"] as? Double ?? 0
                        item.last_update = attributes["last_update"] as? String ?? ""
                        item.idLandkreis = attributes["RS"] as? String ?? ""
                        item.deaths = attributes["deaths"] as? Int64 ?? 0
                        
                        
                        let dt1000: DTAI = DTAI(dateStringFromCovidServer_DE: item.last_update)
                        if dt1000.parseError == true {
                            print("Parse error for last_update = '\(item.last_update)'. No insert!")
                            continue
                        }
                        item.datetime1000 = dt1000.dateTimeAsInteger
                        item.date1000 = dt1000.datePartAsInteger
                        
                        if item.idLandkreis.isEmpty {
                            print("IdLandkreis(RS) is empty for GEN = '\(item.GEN)' and BEZ = '\(item.BEZ)'. No insert!")
                            continue
                        }
                        
                        item.dupprevent = (GetCovidDataFromServerGermany.CreateDuppreventField(idLandkreis: item.idLandkreis, last_update: item.datetime1000))
                                
                                
                        // Insert the Item
                        items.append(item)
                        
                    }
                }
            }
        }
        return items
    }
    
    public static func TranslateLastUpdateToInt64(dateString: String) -> Int64 {
        return DTAI(dateStringFromCovidServer_DE: dateString).dateTimeAsInteger
    }
    
    public static func CreateDuppreventField(idLandkreis: String, last_update: Int64) -> String {
        return ("#" + String(idLandkreis) + "#" + String(last_update) + "#")
    }
}

// MARK:- GetCovidDataFromServerGermany_CheckDateTime

class GetCovidDataFromServerGermany_CheckDateTime: GetCovidDataFromServerBase, CheckForNewData{

    override var urlAddress: String { return "https://services7.arcgis.com/mOBPykOjAyBO2ZKk/arcgis/rest/services/RKI_Landkreisdaten/FeatureServer/0/query" }
    override var jsonDummyData: String { return jsonDummyDataNewestTimeStamp}
    
    private lazy var qParam_where_all: URLQueryItem = URLQueryItem(name: "where", value: "1=1")
    
    private lazy var qParam_outStatistics: URLQueryItem = URLQueryItem(name: "outStatistics", value: "[{\"statisticType\":\"MAX\",\"onStatisticField\":\"last_update\",\"outStatisticFieldName\":\"last_update\"}]")
    private lazy var qParam_outSR: URLQueryItem = URLQueryItem(name: "outSR", value: String(4326))
    private lazy var qParam_form: URLQueryItem = URLQueryItem(name: "f", value: "json")
    private lazy var qParam_returnGeometry: URLQueryItem = URLQueryItem(name: "returnGeometry", value: String(false))
    
    
    
    override fileprivate func buildParametersForRequest() -> [URLQueryItem] {
        var qItems: [URLQueryItem] = [URLQueryItem]()
        
        qItems.append(self.qParam_where_all)
        qItems.append(self.qParam_outStatistics)
        qItems.append(self.qParam_outSR)
        qItems.append(self.qParam_form)
        qItems.append(self.qParam_returnGeometry)
        
        return qItems
    }

    func GetTimeStampOfData() -> TimeInterval {
        Logger.funcStart.notice("GetTimeStampOfData")
        var timeStamp: TimeInterval = 0
        self.GetTheData() { jsonObject in
            //self.printJsonDebug(jsonObject: jsonObject)
            if let jsonObject = jsonObject {
                let timeStamps = self.mapJsonRespondObjectToSQLLiteObjects_Casese(jsonObject: jsonObject)
                if timeStamps.count > 0 {
                    let ti = DTAI.init(dateTimeAsInteger: timeStamps[0].datetime1000)
                    timeStamp = ti.dateTimeAsTimeInterval
                }
            }
        }
        Logger.data.notice("GetTimeStampOfData(Server) = '\(timeStamp,privacy: .public)'")
        return timeStamp
    }
    
    override fileprivate func GetTheData(ReceivedJsonObject: @escaping ([String : Any]?)->()) {
        if self.forTesting == false {
            if let request = self.buildRequest() {
                self.DoRequestAndWait(request) { jsonObject in
                    ReceivedJsonObject(jsonObject)
                }
            }
        } else {
            self.GetDummyDataAndWait() { jsonObject in
                ReceivedJsonObject(jsonObject)
            }
        }
    }
    
    fileprivate func DoRequestAndWait(_ request: URLRequest, ReceivedJsonObject: @escaping ([String : Any]?)->()) {
        // From: https://stackoverflow.com/questions/38952420/swift-wait-until-datataskwithrequest-has-finished-to-call-the-return
        
        var jsonObject = [String : Any]()
        let session = URLSession.shared
        
        let sem = DispatchSemaphore.init(value: 0)

        let task = session.dataTask(with: request) { data, response, error in
            defer { sem.signal() }
            guard error == nil else {
                Logger.log.error("Error: error calling GET: \(error!.localizedDescription, privacy: .public)")
                //print(error!)
                return
            }
            guard let data = data else {
                Logger.log.error("Error: Did not receive data")
                return
            }
            guard let response = response as? HTTPURLResponse, (200 ..< 299) ~= response.statusCode else {
                Logger.log.error("Error: HTTP request failed")
                return
            }
            do {
                guard let jsonResultObject = try JSONSerialization.jsonObject(with: data) as? [String: Any] else {
                    Logger.log.error("Error: Cannot convert data to JSON object.")
                    return
                }

                jsonObject = jsonResultObject
                
            } catch {
                Logger.log.error("Error: Trying to convert JSON data to string.")
                return
            }
        }

        task.resume()

        // This line will wait until the semaphore has been signaled
        // which will be once the data task has completed
        let whenWhen = DispatchTime.now() + DispatchTimeInterval.seconds(1 * 60) // Waits for 1 Minutes.
        let result : DispatchTimeoutResult = sem.wait(timeout: whenWhen)
        
        if result == .timedOut {
            ReceivedJsonObject(nil)
        } else {
            ReceivedJsonObject(jsonObject)
        }
    }
    
    fileprivate func GetDummyDataAndWait(ReceivedJsonObject: @escaping ([String : Any]?)->()) {
        DispatchQueue.global(qos: .background).sync {
            do {
                let jsonData = self.jsonDummyData.data(using: .utf8)!
                guard let jsonObject = try JSONSerialization.jsonObject(with: jsonData) as? [String: Any] else {
                    Logger.log.error("Error: Cannot convert data to JSON object.")
                    return
                }
                DispatchQueue.main.sync {
                    ReceivedJsonObject(jsonObject)
                }
            } catch {
                Logger.log.error("Error: Trying to convert JSON data to string.")
                return
            }
        }
    }

    
    private func mapJsonRespondObjectToSQLLiteObjects_Casese(jsonObject: [String : Any]) -> [CovidCase_Latest] {
        
        var items = [CovidCase_Latest]()
        
        let _ = self.printJsonDebug(jsonObject: jsonObject)
        
        if let features = jsonObject["features"] as? [Any] {  // "features" are the result itemS
            
            for feature in features {
                if let feature = feature as? NSDictionary {
                    if let attributes = feature["attributes"] as? NSDictionary {
                        var item = CovidCase_Latest()
                        item.last_update = attributes["last_update"] as? String ?? ""
                        
                        let dt1000: DTAI = DTAI(dateStringFromCovidServer_DE: item.last_update)
                        if dt1000.parseError == true {
                            Logger.log.error("Parse error for last_update = '\(item.last_update, privacy: .public)'. No insert!")
                            continue
                        }
                        item.datetime1000 = dt1000.dateTimeAsInteger
                                
                        // Insert the Item
                        items.append(item)
                        
                    }
                }
            }
        }
        return items
    }
    
    
    public static func TranslateLastUpdateToInt64(dateString: String) -> Int64 {
        return DTAI(dateStringFromCovidServer_DE: dateString).dateTimeAsInteger
    }
    
    override fileprivate func GetDummyDataAsync(ReceivedJsonObject: @escaping ([String : Any]?)->()) {
        fatalError("Don't use me.")
    }
    
    override fileprivate func DoRequestAsync(_ request: URLRequest, ReceivedJsonObject: @escaping ([String : Any]?) -> ()) {
        fatalError("Don't use me.")
    }
    
    override func GetCasesForCountiesAsync(ReceivedCases: @escaping ([CovidCase]?)->()) {
        fatalError("Don't use me.")
    }
    
}


// MARK:-
class GetCovidDataFromServerGermany_GetRecovered: GetCovidDataFromServerBase {
    
    override var urlAddress: String { return "https://services7.arcgis.com/mOBPykOjAyBO2ZKk/arcgis/rest/services/RKI_COVID19/FeatureServer/0/query" }
    override var jsonDummyData: String { return jsonDummyDataRecovered}
    
    private lazy var qParam_where: URLQueryItem = URLQueryItem(name: "where", value: "1=1")
    //private lazy var qParam_where: URLQueryItem = URLQueryItem(name: "where", value: "GEN=" + "'Würzburg'")
    
    private lazy var qParam_outFields: URLQueryItem = URLQueryItem(name: "outFields", value: "IdLandkreis")
    private lazy var qParam_outStatistics: URLQueryItem = URLQueryItem(name: "outStatistics", value: "[{\"statisticType\":\"SUM\",\"onStatisticField\":\"AnzahlGenesen\",\"outStatisticFieldName\":\"sumGenesene\"},{\"statisticType\":\"MAX\",\"onStatisticField\":\"Datenstand\",\"outStatisticFieldName\":\"last_update\"}]")
    private lazy var qParam_groupByFieldsForStatistics: URLQueryItem = URLQueryItem(name: "groupByFieldsForStatistics", value: "IdLandkreis")
    private lazy var qParam_outSR: URLQueryItem = URLQueryItem(name: "outSR", value: String(4326))
    private lazy var qParam_form: URLQueryItem = URLQueryItem(name: "f", value: "json")
    private lazy var qParam_returnGeometry: URLQueryItem = URLQueryItem(name: "returnGeometry", value: String(false))
    
    override func buildParametersForRequest() -> [URLQueryItem] {
        var qItems: [URLQueryItem] = [URLQueryItem]()
        
        qItems.append(self.qParam_where)
        qItems.append(self.qParam_outFields)
        qItems.append(self.qParam_outSR)
        qItems.append(self.qParam_form)
        qItems.append(self.qParam_outStatistics)
        qItems.append(self.qParam_groupByFieldsForStatistics)
        qItems.append(self.qParam_returnGeometry)
        
        return qItems
    }
    
    
    public func GetRecoveredCasesForCountiesAsync(ReceivedCases: @escaping ([String:CovidCase_Recovered]?)->()) {
        self.GetTheData() { jsonObject in
            //self.printJsonDebug(jsonObject: jsonObject)
            if let jsonObject = jsonObject {
                let recovered_cases = self.mapJsonRespondObjectToSQLLiteObjects_Casese(jsonObject: jsonObject)
                ReceivedCases(recovered_cases)
            }
        }
    }

    
    private func mapJsonRespondObjectToSQLLiteObjects_Casese(jsonObject: [String : Any]) -> [String:CovidCase_Recovered] {
        Logger.funcStart.notice("mapJsonRespondObjectToSQLLiteObjects_Casese(1)")
        
        var items = [String:CovidCase_Recovered]()
        
        let _ = self.printJsonDebug(jsonObject: jsonObject)
        
        if let features = jsonObject["features"] as? [Any] {  // "features" are the result itemS
            
            for feature in features {
                if let feature = feature as? NSDictionary {
                    if let attributes = feature["attributes"] as? NSDictionary {
                        var item = CovidCase_Recovered()
                        item.last_update = attributes["last_update"] as? String ?? ""
                        item.idLandkreis = attributes["IdLandkreis"] as? String ?? ""
                        item.genesen = attributes["sumGenesene"] as? Int64 ?? 0
                        
                        if item.idLandkreis.isEmpty {
                            Logger.log.error("IdLandkreis(RS) is empty. No insert!")
                            continue
                        }
                        
                        let dt1000: DTAI = DTAI(dateStringFromCovidServer_DE: item.last_update)
                        if dt1000.parseError == true {
                            Logger.log.error("Parse error for last_update = '\(item.last_update, privacy: .public)'. No insert!")
                            continue
                        }
                        item.datetime1000 = dt1000.dateTimeAsInteger

                        // Insert the Item
                        items[item.idLandkreis]=item
                        
                    }
                }
            }
        }
        return items
    }
    
}

// MARK:-
class GetCovidDataFromServerGermany_NewCases: GetCovidDataFromServerBase {
    
    override var urlAddress: String { return "https://services7.arcgis.com/mOBPykOjAyBO2ZKk/arcgis/rest/services/RKI_COVID19/FeatureServer/0/query" }
    override var jsonDummyData: String { return jsonDummyDataNewToday}
    
    private lazy var qParam_where: URLQueryItem = URLQueryItem(name: "where", value: "NeuerFall=1 OR NeuerFall=-1")
    
    private lazy var qParam_outFields: URLQueryItem = URLQueryItem(name: "outFields", value: "IdLandkreis,NeuerFall")
    private lazy var qParam_outStatistics: URLQueryItem = URLQueryItem(name: "outStatistics", value: "[{\"statisticType\":\"SUM\",\"onStatisticField\":\"AnzahlFall\",\"outStatisticFieldName\":\"AnzahlNeueFaelle\"},{\"statisticType\":\"MAX\",\"onStatisticField\":\"Datenstand\",\"outStatisticFieldName\":\"last_update\"}]")
    private lazy var qParam_groupByFieldsForStatistics: URLQueryItem = URLQueryItem(name: "groupByFieldsForStatistics", value: "IdLandkreis,NeuerFall")
    private lazy var qParam_outSR: URLQueryItem = URLQueryItem(name: "outSR", value: String(4326))
    private lazy var qParam_form: URLQueryItem = URLQueryItem(name: "f", value: "json")
    private lazy var qParam_returnGeometry: URLQueryItem = URLQueryItem(name: "returnGeometry", value: String(false))
    
    
    override func buildParametersForRequest() -> [URLQueryItem] {
        var qItems: [URLQueryItem] = [URLQueryItem]()
        
        qItems.append(self.qParam_where)
        qItems.append(self.qParam_outFields)
        qItems.append(self.qParam_outSR)
        qItems.append(self.qParam_form)
        qItems.append(self.qParam_outStatistics)
        qItems.append(self.qParam_groupByFieldsForStatistics)
        qItems.append(self.qParam_returnGeometry)
        
        return qItems
    }

    
    public func GetNewCasesForCountiesAsync(ReceivedCases: @escaping ([String:CovidCase_NewCases]?)->()) {
        self.GetTheData() { jsonObject in
            //self.printJsonDebug(jsonObject: jsonObject)
            if let jsonObject = jsonObject {
                let new_cases = self.mapJsonRespondObjectToSQLLiteObjects_Casese(jsonObject: jsonObject)
                ReceivedCases(new_cases)
            }
        }
    }
    
    
    private func mapJsonRespondObjectToSQLLiteObjects_Casese(jsonObject: [String : Any]) -> [String:CovidCase_NewCases] {
        Logger.funcStart.notice("mapJsonRespondObjectToSQLLiteObjects_Casese(2)")
        
        var items = [String:CovidCase_NewCases]()
        var item: CovidCase_NewCases
        var idLandkreis: String
        var cases: Int64
        var NeuerFall: Int64
        var last_update: String
        
        let _ = self.printJsonDebug(jsonObject: jsonObject)
        
        if let features = jsonObject["features"] as? [Any] {  // "features" are the result itemS
            
            for feature in features {
                if let feature = feature as? NSDictionary {
                    if let attributes = feature["attributes"] as? NSDictionary {
                        idLandkreis = attributes["IdLandkreis"] as? String ?? ""
                        if idLandkreis.isEmpty {
                            Logger.log.error("IdLandkreis(RS) is empty. No insert!")
                            continue
                        }
                        last_update = attributes["last_update"] as? String ?? ""
                        let dt1000: DTAI = DTAI(dateStringFromCovidServer_DE: last_update)
                        if dt1000.parseError == true {
                            print()
                            Logger.log.error("Parse error for last_update = '\(last_update, privacy: .public)'. No insert!")
                            continue
                        }
                        if items[idLandkreis] != nil {
                            item = items[idLandkreis]!
                            if item.datetime1000 != dt1000.dateTimeAsInteger {
                                Logger.log.error("Last_update does not match = '\(last_update, privacy: .public)'. No insert!")
                                continue
                            }
                        } else {
                            item = CovidCase_NewCases()
                            item.last_update = last_update
                            item.idLandkreis = idLandkreis
                            item.datetime1000 = dt1000.dateTimeAsInteger
                            
                            // Insert the Item
                            items[item.idLandkreis]=item
                        }
                        
                        NeuerFall = attributes["NeuerFall"] as? Int64 ?? 0
                        cases = attributes["AnzahlNeueFaelle"] as? Int64 ?? 0
                        if NeuerFall == -1 {
                            //Logger.log.notice("Decrement of incidents.")
                        }
                        
                        items[item.idLandkreis]!.newCases = items[item.idLandkreis]!.newCases + cases
                            
                    }
                }
            }
        }
        return items
    }
    
}