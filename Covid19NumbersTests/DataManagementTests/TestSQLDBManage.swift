//
//  TestSQLDBManage.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 09.10.20.
//  Copyright © 2020 Dirk Scheidt. All rights reserved.
//

import XCTest
@testable import Covid19Numbers

class TestSQLDBManage: XCTestCase {
    
    var cut : DBManager?
    override func setUpWithError() throws {
        self.IsUnitTestParameterSet()

        self.cut = DBManager()
        if self.cut != nil {
            UserStorage.share.ClearData()
            cut?.WipeDatabase()
            cut?.userStorage = nil
        }
    }

    override func tearDownWithError() throws {
        if self.cut != nil {
            cut?.WipeDatabase()
            cut = nil
        }
    }

    func testOpenDatabase() throws {
        // Arrange
        
        // Act
        let result = cut!.OpenDataBaseAwait()
        
        // Assert
        XCTAssertTrue(result, "Open failed.")
    }

    func testOpenExistingDatabase() throws {
        // Arrange
        let _ = cut!.OpenDataBaseAwait()
        cut = nil
        self.cut = DBManager()
        
        // Act
        // Für die eigentliche Prüfung muß ich noch ein Insert haben...
        let result = cut!.OpenDataBaseAwait()
        
        // Assert
        XCTAssertTrue(result, "Reopen failed.")
    }

    func testInsertOneItem() throws {
        // Arrange
        let _ = cut!.OpenDataBaseAwait()
        
        
        var item : CovidCase = CovidCase()
        item.OBJECTID  = 304
        item.GEN = "Würzburg"
        item.BEZ = "Landkreis"
        item.BL = "Bayern"
        item.EWZ = 161834
        item.cases = 630
        item.cases_per_100k = 389.28778872177702
        item.cases7_per_100k = 27.806270622984002
        item.last_update = "23.09.2020, 00:00 Uhr"
        item.idLandkreis = "123"
        item.datetime1000 = ServerRequestHelpers.TranslateLastUpdateToInt64(dateString: item.last_update)
        item.dupprevent = (ServerRequestHelpers.CreateDuppreventField(idLandkreis: item.idLandkreis, last_update: item.datetime1000))

        // Act
        let result: Bool = cut!.InsertItemAwait(item: item)
        
        // Assert
        XCTAssertTrue(result, "Insert failed.")
        let returnvalues = cut!.readValues()
        XCTAssertNotNil(returnvalues, "No values returned.")
        let returnvalue = returnvalues[0]
        XCTAssertEqual(item.OBJECTID, returnvalue.OBJECTID)
        XCTAssertEqual(item.GEN, returnvalue.GEN)
        XCTAssertEqual(item.BEZ, returnvalue.BEZ)
        XCTAssertEqual(item.BL, returnvalue.BL)
        XCTAssertEqual(item.EWZ, returnvalue.EWZ)
        XCTAssertEqual(item.cases, returnvalue.cases)
        XCTAssertEqual(item.cases_per_100k, returnvalue.cases_per_100k)
        XCTAssertEqual(item.cases7_per_100k, returnvalue.cases7_per_100k)
        XCTAssertEqual(item.last_update, returnvalue.last_update)
        XCTAssertEqual(item.datetime1000, returnvalue.datetime1000)
        XCTAssertEqual(item.dupprevent, returnvalue.dupprevent)
    }
    
    func testInsertOneItemCheckUserdata() throws {
        // Arrange
        self.cut = DBManager()
        if self.cut != nil {
            cut?.WipeDatabase()
        }
        
        let _ = cut!.OpenDataBaseAwait()
        cut!.userStorage = nil
        
        var item : CovidCase = CovidCase()
        item.OBJECTID  = 304
        item.GEN = "Würzburg"
        item.BEZ = "Landkreis"
        item.BL = "Bayern"
        item.EWZ = 161834
        item.cases = 630
        item.cases_per_100k = 389.28778872177702
        item.cases7_per_100k = 27.806270622984002
        item.last_update = "23.09.2020, 00:00 Uhr"
        item.idLandkreis = "123"
        item.datetime1000 = ServerRequestHelpers.TranslateLastUpdateToInt64(dateString: item.last_update)
        item.dupprevent = (ServerRequestHelpers.CreateDuppreventField(idLandkreis: item.idLandkreis, last_update: item.datetime1000))
        UserStorage.share.ClearData()
        NotificationCenter.default.addObserver(self, selector: #selector(self.CheckUserData), name: UserDefaults.didChangeNotification, object: nil)
        
        
        // Act
        cut!.InsertItemsAwait(items: [item])
        
        // Assert
        
//        let dbIsEmpty = UserStorage.share.databaseIsEmpty
//        let latestTimeStampAtLocalDB = UserStorage.share.latestTimeStampAtLocalDB
//        print(latestTimeStampAtLocalDB)
//        XCTAssertFalse(dbIsEmpty, "DB is still empty.")
//        XCTAssertEqual(latestTimeStampAtLocalDB, 1600819200000, "TimeStamp not set properly.")

    }
    
    @objc func CheckUserData(_ notification: Notification) {
        let dbIsEmpty = UserStorage.share.databaseIsEmpty
        let latestTimeStampAtLocalDB = UserStorage.share.latestTimeStampAtLocalDB
        if dbIsEmpty == false && latestTimeStampAtLocalDB != 0 {
            NotificationCenter.default.removeObserver(self, name: UserDefaults.didChangeNotification, object: nil)
            print("Removed from Not-Center.")
        }
    }
    
    
    func testInsertOneItemDuplicate() throws {
        // Arrange
        let _ = cut!.OpenDataBaseAwait()
        
        var item : CovidCase = CovidCase()
        item.OBJECTID  = 304
        item.GEN = "Würzburg"
        item.BEZ = "Landkreis"
        item.BL = "Bayern"
        item.EWZ = 161834
        item.cases = 630
        item.cases_per_100k = 389.28778872177702
        item.cases7_per_100k = 27.806270622984002
        item.last_update = "23.09.2020, 00:00 Uhr"
        item.idLandkreis = "123"
        item.datetime1000 = ServerRequestHelpers.TranslateLastUpdateToInt64(dateString: item.last_update)
        item.dupprevent = (ServerRequestHelpers.CreateDuppreventField(idLandkreis: item.idLandkreis, last_update: item.datetime1000))
        
        // First Insert:
        let _ = cut!.InsertItemAwait(item: item)
        
        // Act
        let result: Bool = cut!.InsertItemAwait(item: item)
        
        // Assert
        XCTAssertTrue(result, "Insert failed.")
        let returnvalues = cut!.readValues()
        XCTAssertNotNil(returnvalues, "No values returned.")
        XCTAssertEqual(returnvalues.count, 1)
        let returnvalue = returnvalues[0]
        XCTAssertEqual(item.OBJECTID, returnvalue.OBJECTID)
        XCTAssertEqual(item.GEN, returnvalue.GEN)
        XCTAssertEqual(item.BEZ, returnvalue.BEZ)
        XCTAssertEqual(item.BL, returnvalue.BL)
        XCTAssertEqual(item.EWZ, returnvalue.EWZ)
        XCTAssertEqual(item.cases, returnvalue.cases)
        XCTAssertEqual(item.cases_per_100k, returnvalue.cases_per_100k)
        XCTAssertEqual(item.cases7_per_100k, returnvalue.cases7_per_100k)
        XCTAssertEqual(item.last_update, returnvalue.last_update)
        XCTAssertEqual(item.datetime1000, returnvalue.datetime1000)
        XCTAssertEqual(item.dupprevent, returnvalue.dupprevent)
    }
    
    func testInsertTwoItems() throws {
        // Arrange
        let _ = cut!.OpenDataBaseAwait()
        
        var item : CovidCase = CovidCase()
        item.OBJECTID  = 304
        item.GEN = "Würzburg"
        item.BEZ = "Landkreis"
        item.BL = "Bayern"
        item.EWZ = 161834
        item.cases = 630
        item.cases_per_100k = 389.28778872177702
        item.cases7_per_100k = 27.806270622984002
        item.last_update = "23.09.2020, 00:00 Uhr"
        item.idLandkreis = "123"
        item.datetime1000 = ServerRequestHelpers.TranslateLastUpdateToInt64(dateString: item.last_update)
        item.dupprevent = (ServerRequestHelpers.CreateDuppreventField(idLandkreis: item.idLandkreis, last_update: item.datetime1000))
        
        var item2 : CovidCase = CovidCase()
        item2.OBJECTID  = 304
        item2.GEN = "Würzburg"
        item2.BEZ = "Landkreis"
        item2.BL = "Bayern"
        item2.EWZ = 161834
        item2.cases = 630
        item2.cases_per_100k = 389.28778872177702
        item2.cases7_per_100k = 27.806270622984002
        item2.last_update = "24.09.2020, 00:00 Uhr"
        item2.idLandkreis = "123"
        item2.datetime1000 = ServerRequestHelpers.TranslateLastUpdateToInt64(dateString: item2.last_update)
        item2.dupprevent = (ServerRequestHelpers.CreateDuppreventField(idLandkreis: item2.idLandkreis, last_update: item2.datetime1000))
        
        // First Insert:
        let _ = cut!.InsertItemAwait(item: item)
        
        // Act
        let result: Bool = cut!.InsertItemAwait(item: item2)
        
        // Assert
        XCTAssertTrue(result, "Insert failed.")
        let returnvalues = cut!.readValues()
        XCTAssertNotNil(returnvalues, "No values returned.")
        let expectedCount = cut!.CountCasesAwait()
        XCTAssertEqual(Int64(returnvalues.count), expectedCount)
    }
    
    func testGetNewestDateTime1000() throws {
        // Arrange
        let _ = cut!.OpenDataBaseAwait()
        
        var item : CovidCase = CovidCase()
        item.OBJECTID  = 304
        item.GEN = "Würzburg"
        item.BEZ = "Landkreis"
        item.BL = "Bayern"
        item.EWZ = 161834
        item.cases = 630
        item.cases_per_100k = 389.28778872177702
        item.cases7_per_100k = 27.806270622984002
        item.last_update = "23.09.2020, 00:00 Uhr"
        item.idLandkreis = "123"
        item.datetime1000 = ServerRequestHelpers.TranslateLastUpdateToInt64(dateString: item.last_update)
        item.dupprevent = (ServerRequestHelpers.CreateDuppreventField(idLandkreis: item.idLandkreis, last_update: item.datetime1000))
        
        var item2 : CovidCase = CovidCase()
        item2.OBJECTID  = 304
        item2.GEN = "Würzburg"
        item2.BEZ = "Landkreis"
        item2.BL = "Bayern"
        item2.EWZ = 161834
        item2.cases = 630
        item2.cases_per_100k = 389.28778872177702
        item2.cases7_per_100k = 27.806270622984002
        item2.last_update = "24.09.2020, 00:00 Uhr"
        item2.idLandkreis = "123"
        item2.datetime1000 = ServerRequestHelpers.TranslateLastUpdateToInt64(dateString: item2.last_update)
        item2.dupprevent = (ServerRequestHelpers.CreateDuppreventField(idLandkreis: item2.idLandkreis, last_update: item2.datetime1000))
        
        // First Insert:
        let _ = cut!.InsertItemAwait(item: item)
        let _ = cut!.InsertItemAwait(item: item2)
        
        // Act
        let datetime1000 = cut?.GetNewestDateTime1000Await()
        
        // Assert
        XCTAssertEqual(datetime1000, item2.datetime1000)
    }
    
    func testGetNewestItemsForDisplay() throws {
        // Arrange
        let _ = cut!.OpenDataBaseAwait()
        
        var item : CovidCase = CovidCase()
        item.OBJECTID  = 304
        item.GEN = "Würzburg"
        item.BEZ = "Landkreis"
        item.BL = "Bayern"
        item.EWZ = 161834
        item.cases = 630
        item.cases_per_100k = 389.28778872177702
        item.cases7_per_100k = 27.806270622984002
        item.last_update = "23.09.2020, 00:00 Uhr"
        item.idLandkreis = "304"
        item.datetime1000 = ServerRequestHelpers.TranslateLastUpdateToInt64(dateString: item.last_update)
        item.dupprevent = (ServerRequestHelpers.CreateDuppreventField(idLandkreis: item.idLandkreis, last_update: item.datetime1000))
        
        var item2 : CovidCase = CovidCase()
        item2.OBJECTID  = 305
        item2.GEN = "Würzburg"
        item2.BEZ = "Stadt"
        item2.BL = "Bayern"
        item2.EWZ = 161834
        item2.cases = 630
        item2.cases_per_100k = 339.28778872177702
        item2.cases7_per_100k = 24.806270622984002
        item2.last_update = "23.09.2020, 00:00 Uhr"
        item2.idLandkreis = "305"
        item2.datetime1000 = ServerRequestHelpers.TranslateLastUpdateToInt64(dateString: item2.last_update)
        item2.dupprevent = (ServerRequestHelpers.CreateDuppreventField(idLandkreis: item2.idLandkreis, last_update: item2.datetime1000))
        
        var item3 : CovidCase = CovidCase()
        item3.OBJECTID  = 304
        item3.GEN = "Würzburg"
        item3.BEZ = "Landkreis"
        item3.BL = "Bayern"
        item3.EWZ = 161834
        item3.cases = 630
        item3.cases_per_100k = 49.28778872177702
        item3.cases7_per_100k = 17.806270622984002
        item3.last_update = "24.09.2020, 00:00 Uhr"
        item3.idLandkreis = "304"
        item3.datetime1000 = ServerRequestHelpers.TranslateLastUpdateToInt64(dateString: item3.last_update)
        item3.dupprevent = (ServerRequestHelpers.CreateDuppreventField(idLandkreis: item3.idLandkreis, last_update: item3.datetime1000))
        
        var item4 : CovidCase = CovidCase()
        item4.OBJECTID  = 305
        item4.GEN = "Würzburg"
        item4.BEZ = "Stadt"
        item4.BL = "Bayern"
        item4.EWZ = 161834
        item4.cases = 630
        item4.cases_per_100k = 349.28778872177702
        item4.cases7_per_100k = 55.806270622984002
        item4.last_update = "24.09.2020, 00:00 Uhr"
        item4.idLandkreis = "305"
        item4.datetime1000 = ServerRequestHelpers.TranslateLastUpdateToInt64(dateString: item4.last_update)
        item4.dupprevent = (ServerRequestHelpers.CreateDuppreventField(idLandkreis: item4.idLandkreis, last_update: item4.datetime1000))
        
        
        // First Insert:
        let _ = cut!.InsertItemAwait(item: item)
        let _ = cut!.InsertItemAwait(item: item2)
        let _ = cut!.InsertItemAwait(item: item3)
        let _ = cut!.InsertItemAwait(item: item4)
        
        
        // Act
        let list = cut!.GetLastTwoDaysOfCovidCasesForDisplayAwait()
        
        // Assert
        XCTAssertNotNil(list)
        XCTAssertEqual(list.cases.count, 2)
    }
    
    
    func testGetDetailsByLandKreisID() throws {
        // Arrange
        let _ = cut!.OpenDataBaseAwait()

        var item : CovidCase = CovidCase()
        item.OBJECTID  = 304
        item.GEN = "Würzburg"
        item.BEZ = "Landkreis"
        item.BL = "Bayern"
        item.EWZ = 161834
        item.cases = 230
        item.cases_per_100k = 389.28778872177702
        item.cases7_per_100k = 27.806270622984002
        item.last_update = "23.09.2020, 00:00 Uhr"
        item.idLandkreis = "304"
        item.datetime1000 = ServerRequestHelpers.TranslateLastUpdateToInt64(dateString: item.last_update)
        item.dupprevent = (ServerRequestHelpers.CreateDuppreventField(idLandkreis: item.idLandkreis, last_update: item.datetime1000))

        var item2 : CovidCase = CovidCase()
        item2.OBJECTID  = 305
        item2.GEN = "Würzburg"
        item2.BEZ = "Stadt"
        item2.BL = "Bayern"
        item2.EWZ = 161834
        item2.cases = 630
        item2.cases_per_100k = 339.28778872177702
        item2.cases7_per_100k = 24.806270622984002
        item2.last_update = "23.09.2020, 00:00 Uhr"
        item2.idLandkreis = "305"
        item2.datetime1000 = ServerRequestHelpers.TranslateLastUpdateToInt64(dateString: item2.last_update)
        item2.dupprevent = (ServerRequestHelpers.CreateDuppreventField(idLandkreis: item2.idLandkreis, last_update: item2.datetime1000))

        var item3 : CovidCase = CovidCase()
        item3.OBJECTID  = 304
        item3.GEN = "Würzburg"
        item3.BEZ = "Landkreis"
        item3.BL = "Bayern"
        item3.EWZ = 161834
        item3.cases = 130
        item3.cases_per_100k = 49.28778872177702
        item3.cases7_per_100k = 17.806270622984002
        item3.last_update = "24.09.2020, 00:00 Uhr"
        item3.idLandkreis = "304"
        item3.datetime1000 = ServerRequestHelpers.TranslateLastUpdateToInt64(dateString: item3.last_update)
        item3.dupprevent = (ServerRequestHelpers.CreateDuppreventField(idLandkreis: item3.idLandkreis, last_update: item3.datetime1000))

        var item4 : CovidCase = CovidCase()
        item4.OBJECTID  = 305
        item4.GEN = "Würzburg"
        item4.BEZ = "Stadt"
        item4.BL = "Bayern"
        item4.EWZ = 161834
        item4.cases = 430
        item4.cases_per_100k = 349.28778872177702
        item4.cases7_per_100k = 55.806270622984002
        item4.last_update = "24.09.2020, 00:00 Uhr"
        item4.idLandkreis = "305"
        item4.datetime1000 = ServerRequestHelpers.TranslateLastUpdateToInt64(dateString: item4.last_update)
        item4.dupprevent = (ServerRequestHelpers.CreateDuppreventField(idLandkreis: item4.idLandkreis, last_update: item4.datetime1000))


        // First Insert:
        let _ = cut!.InsertItemAwait(item: item)
        let _ = cut!.InsertItemAwait(item: item2)
        let _ = cut!.InsertItemAwait(item: item3)
        let _ = cut!.InsertItemAwait(item: item4)


        // Act
        let list = cut!.GetAllDaysOfOneCountyForDisplayAwait(idLandkreis: "304", orderBy: .alphabetic)

        // Assert
        XCTAssertNotNil(list)
        XCTAssertEqual(list.cases.count, 1)
        XCTAssertEqual(list.cases[0].idLandkreis, "304")
        XCTAssertEqual(list.cases[0].cases[0].cases, 130)
        XCTAssertEqual(list.cases[0].cases[1].cases, 230)
        XCTAssertEqual(list.cases[0].cases[0].last_update, "24.09.2020, 00:00 Uhr")
        XCTAssertEqual(list.cases[0].cases[1].last_update, "23.09.2020, 00:00 Uhr")
    }
    
    
    func testGetAllAll() throws {
        // Arrange
        let _ = cut!.OpenDataBaseAwait()
        
        var item : CovidCase = CovidCase()
        item.OBJECTID  = 304
        item.GEN = "Würzburg"
        item.BEZ = "Landkreis"
        item.BL = "Bayern"
        item.EWZ = 161834
        item.cases = 630
        item.cases_per_100k = 389.28778872177702
        item.cases7_per_100k = 27.806270622984002
        item.last_update = "23.09.2020, 00:00 Uhr"
        item.idLandkreis = "304"
        item.datetime1000 = ServerRequestHelpers.TranslateLastUpdateToInt64(dateString: item.last_update)
        item.dupprevent = (ServerRequestHelpers.CreateDuppreventField(idLandkreis: item.idLandkreis, last_update: item.datetime1000))
        
        var item2 : CovidCase = CovidCase()
        item2.OBJECTID  = 305
        item2.GEN = "Würzburg"
        item2.BEZ = "Stadt"
        item2.BL = "Bayern"
        item2.EWZ = 161834
        item2.cases = 630
        item2.cases_per_100k = 339.28778872177702
        item2.cases7_per_100k = 24.806270622984002
        item2.last_update = "23.09.2020, 00:00 Uhr"
        item2.idLandkreis = "305"
        item2.datetime1000 = ServerRequestHelpers.TranslateLastUpdateToInt64(dateString: item2.last_update)
        item2.dupprevent = (ServerRequestHelpers.CreateDuppreventField(idLandkreis: item2.idLandkreis, last_update: item2.datetime1000))
        
        var item3 : CovidCase = CovidCase()
        item3.OBJECTID  = 304
        item3.GEN = "Würzburg"
        item3.BEZ = "Landkreis"
        item3.BL = "Bayern"
        item3.EWZ = 161834
        item3.cases = 630
        item3.cases_per_100k = 49.28778872177702
        item3.cases7_per_100k = 17.806270622984002
        item3.last_update = "24.09.2020, 00:00 Uhr"
        item3.idLandkreis = "304"
        item3.datetime1000 = ServerRequestHelpers.TranslateLastUpdateToInt64(dateString: item3.last_update)
        item3.dupprevent = (ServerRequestHelpers.CreateDuppreventField(idLandkreis: item3.idLandkreis, last_update: item3.datetime1000))
        
        var item4 : CovidCase = CovidCase()
        item4.OBJECTID  = 305
        item4.GEN = "Würzburg"
        item4.BEZ = "Stadt"
        item4.BL = "Bayern"
        item4.EWZ = 161834
        item4.cases = 630
        item4.cases_per_100k = 349.28778872177702
        item4.cases7_per_100k = 55.806270622984002
        item4.last_update = "24.09.2020, 00:00 Uhr"
        item4.idLandkreis = "305"
        item4.datetime1000 = ServerRequestHelpers.TranslateLastUpdateToInt64(dateString: item4.last_update)
        item4.dupprevent = (ServerRequestHelpers.CreateDuppreventField(idLandkreis: item4.idLandkreis, last_update: item4.datetime1000))
        
        
        // First Insert:
        let _ = cut!.InsertItemAwait(item: item)
        let _ = cut!.InsertItemAwait(item: item2)
        let _ = cut!.InsertItemAwait(item: item3)
        let _ = cut!.InsertItemAwait(item: item4)
        
        
        // Act
        let list = cut!.GetLastTwoDaysOfCovidCasesForDisplayAwait()
        
        // Assert
        XCTAssertNotNil(list)
        XCTAssertEqual(list.cases.count, 2)
    }
    
    func testGetAllAllOneItemMissing() throws {
        // Arrange
        let _ = cut!.OpenDataBaseAwait()
        
        var item : CovidCase = CovidCase()
        item.OBJECTID  = 304
        item.GEN = "Würzburg"
        item.BEZ = "Landkreis"
        item.BL = "Bayern"
        item.EWZ = 161834
        item.cases = 630
        item.cases_per_100k = 389.28778872177702
        item.cases7_per_100k = 27.806270622984002
        item.last_update = "23.09.2020, 00:00 Uhr"
        item.idLandkreis = "304"
        item.datetime1000 = ServerRequestHelpers.TranslateLastUpdateToInt64(dateString: item.last_update)
        item.dupprevent = (ServerRequestHelpers.CreateDuppreventField(idLandkreis: item.idLandkreis, last_update: item.datetime1000))
        
        var item2 : CovidCase = CovidCase()
        item2.OBJECTID  = 305
        item2.GEN = "Würzburg"
        item2.BEZ = "Stadt"
        item2.BL = "Bayern"
        item2.EWZ = 161834
        item2.cases = 630
        item2.cases_per_100k = 339.28778872177702
        item2.cases7_per_100k = 24.806270622984002
        item2.last_update = "23.09.2020, 00:00 Uhr"
        item2.idLandkreis = "305"
        item2.datetime1000 = ServerRequestHelpers.TranslateLastUpdateToInt64(dateString: item2.last_update)
        item2.dupprevent = (ServerRequestHelpers.CreateDuppreventField(idLandkreis: item2.idLandkreis, last_update: item2.datetime1000))
        
        var item3 : CovidCase = CovidCase()
        item3.OBJECTID  = 304
        item3.GEN = "Würzburg"
        item3.BEZ = "Landkreis"
        item3.BL = "Bayern"
        item3.EWZ = 161834
        item3.cases = 630
        item3.cases_per_100k = 49.28778872177702
        item3.cases7_per_100k = 17.806270622984002
        item3.last_update = "24.09.2020, 00:00 Uhr"
        item3.idLandkreis = "304"
        item3.datetime1000 = ServerRequestHelpers.TranslateLastUpdateToInt64(dateString: item3.last_update)
        item3.dupprevent = (ServerRequestHelpers.CreateDuppreventField(idLandkreis: item3.idLandkreis, last_update: item3.datetime1000))

        
        
        // First Insert:
        let _ = cut!.InsertItemAwait(item: item)
        let _ = cut!.InsertItemAwait(item: item2)
        let _ = cut!.InsertItemAwait(item: item3)
        
        
        // Act
        let list = cut!.GetLastTwoDaysOfCovidCasesForDisplayAwait()
        
        // Assert
        XCTAssertNotNil(list)
        XCTAssertEqual(list.cases.count, 2)
        XCTAssertEqual(list.cases[0].cases[0].OBJECTID, 304)
        XCTAssertEqual(list.cases[0].cases[1].OBJECTID, 304)
        XCTAssertEqual(list.cases[1].cases[0].OBJECTID, 0)
        XCTAssertEqual(list.cases[1].cases[1].OBJECTID, 305)
    }
    

    func testGetAllCovidCasesForDisplay_NoData() throws {
        // Arrange
        let _ = cut!.OpenDataBaseAwait()
        
        // Act
        let list = cut!.GetLastTwoDaysOfCovidCasesForDisplayAwait()
        
        // Assert
        XCTAssertNotNil(list)
        XCTAssertEqual(list.cases.count, 0)
    }
    
    
    func testGetNewestDateTime1000_NoData() throws {
        // Arrange
        let _ = cut!.OpenDataBaseAwait()

        // Act
        let datetime1000: Int64? = cut?.GetNewestDateTime1000Await()
        
        // Assert
        XCTAssertNil(datetime1000)
    }
    
    
    func testTimeSubtraction() throws {
        // Arrange
        let newestDate: String = "26.09.2020, 16:52 Uhr"
        let newestDateTime1000: Int64 = ServerRequestHelpers.TranslateLastUpdateToInt64(dateString: newestDate)
        
        let _ = cut!.OpenDataBaseAwait()

        // Act
        let oldesDateTime1000: Int64 = cut!.SubstractDaysFromDateTime1000(dateTime1000: newestDateTime1000)
        
        // Assert
        XCTAssertTrue(oldesDateTime1000 > 0)
    }
    
    
    func testTimeSubtraction_2() throws {
        // Arrange
        let oneDay: Int64 = 86400 * 1000
        let sevenDays: Int64 = oneDay * Int64(AppDefaultConfiguration.deleteCasesOlderThenDefault)
        
        let newestDate: String = "26.09.2020, 00:00 Uhr"
        let newestDateTime1000: Int64 = ServerRequestHelpers.TranslateLastUpdateToInt64(dateString: newestDate)
        let _ = cut!.OpenDataBaseAwait()

        // Act
        let oldesDateTime1000: Int64 = cut!.SubstractDaysFromDateTime1000(dateTime1000: newestDateTime1000)
        
        // Assert
        let targetTick = newestDateTime1000 - sevenDays
        XCTAssertTrue(oldesDateTime1000 == targetTick)
    }
    
    
    func testDeleteOlderCases() throws {
        // Arrange
        let _ = cut!.OpenDataBaseAwait()
        
        var item : CovidCase = CovidCase()
        item.OBJECTID  = 304
        item.GEN = "Würzburg"
        item.BEZ = "Landkreis"
        item.BL = "Bayern"
        item.EWZ = 161834
        item.cases = 630
        item.cases_per_100k = 389.28778872177702
        item.cases7_per_100k = 27.806270622984002
        item.idLandkreis = "123"
        //item.last_update = "23.09.2020, 00:00 Uhr"
        //item.datetime1000 = ServerRequestHelpers.TranslateLastUpdateToInt64(dateString: item.last_update)
        //item.dupprevent = (ServerRequestHelpers.CreateDuppreventField(OBJECTID: item.OBJECTID, last_update: item.last_update))
        
        for index in (14...23).reversed() {
            item.last_update = "\(String(index)).09.2020, 00:00 Uhr"
            item.datetime1000 = ServerRequestHelpers.TranslateLastUpdateToInt64(dateString: item.last_update)
            item.dupprevent = (ServerRequestHelpers.CreateDuppreventField(idLandkreis: item.idLandkreis, last_update: item.datetime1000))
            let _ = cut!.InsertItemAwait(item: item)
        }
        
        let actualPresentCasese = cut!.CountCasesAwait()
        
        // Act
        let result = cut!.DeleteOlderCasesAwait()
        
        //Assert
        XCTAssertTrue(result == true)
        let casesAfterDelete = cut!.CountCasesAwait()
        XCTAssertTrue(actualPresentCasese == 10)
        XCTAssertTrue(casesAfterDelete! == AppDefaultConfiguration.deleteCasesOlderThenDefault)
        
    }
    
    
    func testDeleteOlderCases_2() throws {
        // Arrange
        let _ = cut!.OpenDataBaseAwait()
        
        var item : CovidCase = CovidCase()
        item.OBJECTID  = 304
        item.GEN = "Würzburg"
        item.BEZ = "Landkreis"
        item.BL = "Bayern"
        item.EWZ = 161834
        item.cases = 630
        item.cases_per_100k = 389.28778872177702
        item.cases7_per_100k = 27.806270622984002
        item.idLandkreis = "123"
        
        let a = 14
        let b = a + AppDefaultConfiguration.deleteCasesOlderThenDefault + 6
        
        for index in (a ... (b - 1)).reversed() {
            item.last_update = "\(String(index)).09.2020, 00:00 Uhr"
            item.datetime1000 = ServerRequestHelpers.TranslateLastUpdateToInt64(dateString: item.last_update)
            item.dupprevent = (ServerRequestHelpers.CreateDuppreventField(idLandkreis: item.idLandkreis, last_update: item.datetime1000))
            let _ = cut!.InsertItemAwait(item: item)
        }
        
        let actualPresentCasese = cut!.CountCasesAwait()
        
        // Act
        let result = cut!.DeleteOlderCasesAwait()
        
        //Assert
        XCTAssertTrue(result == true)
        let casesAfterDelete = cut!.CountCasesAwait()
        XCTAssertTrue(actualPresentCasese! == (b - a))
        XCTAssertTrue(casesAfterDelete! == AppDefaultConfiguration.deleteCasesOlderThenDefault)
        
    }
    
    
    func testDeleteOlderCases_NoItems() throws {
        // Arrange
        let _ = cut!.OpenDataBaseAwait()
        let actualPresentCasese = cut!.CountCasesAwait()
        
        // Act
        let result = cut!.DeleteOlderCasesAwait()
        
        //Assert
        XCTAssertTrue(result == true)
        let casesAfterDelete = cut!.CountCasesAwait()
        XCTAssertTrue(actualPresentCasese == 0)
        XCTAssertTrue(casesAfterDelete == 0)
        
    }
    
    
    func testInsertFavoriteObjectID() throws {
        // Arrange
        let _ = cut!.OpenDataBaseAwait()
        
        // Act
        let result = cut!.InsertFavoriteAwait("99")
        
        //Assert
        XCTAssertTrue(result == true)
        let favoritesPresent = cut!.CountFavoritesAwait()
        XCTAssertTrue(favoritesPresent == 1)
        
    }
    
    
    func testInsertFavoriteObjectID_Duplicates() throws {
        // Arrange
        let _ = cut!.OpenDataBaseAwait()
        let _ = cut!.InsertFavoriteAwait("99")
        
        // Act
        let result = cut!.InsertFavoriteAwait("99")
        
        //Assert
        XCTAssertTrue(result == true)
        let favoritesPresent = cut!.CountFavoritesAwait()
        XCTAssertTrue(favoritesPresent == 1)
    }
    
    
    func testDeleteFavorites() throws {
        // Arrange
        let _ = cut!.OpenDataBaseAwait()
        let _ = cut!.InsertFavoriteAwait("99")

        // Act
        let result = cut!.DeleteAllFromFavoritesAwait()

        //Assert
        XCTAssertTrue(result == true)
        let favoritesPresent = cut!.CountFavoritesAwait()
        XCTAssertTrue(favoritesPresent == 0)

    }
    
    
    func testGetFavorites() throws {
        // Arrange
        let _ = cut!.OpenDataBaseAwait()
        let _ = cut!.InsertFavoriteAwait("99")
        let _ = cut!.InsertFavoriteAwait("100")
        
        // Act
        let result = cut!.GetFavoritesAwait()
        
        //Assert
        XCTAssertTrue(result.count == 2)
    }
}
