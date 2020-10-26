//
//  TestDateTime.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 09.10.20.
//  Copyright © 2020 Dirk Scheidt. All rights reserved.
//

import XCTest
@testable import Covid19Numbers

class TestDateTime: XCTestCase {

    override func setUpWithError() throws {
        self.IsUnitTestParameterSet()
    }

    func testDateTime_1() throws {
        // Arrange
        let RFC3339DateFormatter = DateFormatter()
        RFC3339DateFormatter.locale = Locale(identifier: "en_US_POSIX")
        RFC3339DateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZZZZZ"
        RFC3339DateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
         
        let string = "2020-10-01T00:00:00-00:00"
        let expDate = RFC3339DateFormatter.date(from: string)
        
        // Act
        let dtai: DTAI = DTAI(dateTimeAsInteger: 1601_510_400_000)
        
        // Assert
        let exp = expDate!.timeIntervalSince1970
        let res = dtai.dateTimeAsDate.timeIntervalSince1970
        
        XCTAssertEqual(exp, res)
    }

    
    func testDateTime_2() throws {
        // Arrange
        let RFC3339DateFormatter = DateFormatter()
        RFC3339DateFormatter.locale = Locale(identifier: "en_US_POSIX")
        RFC3339DateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZZZZZ"
        RFC3339DateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
         
        let string = "2020-10-01T00:00:59-00:00"
        let expDate = RFC3339DateFormatter.date(from: string)
        
        // Act
        let dtai: DTAI = DTAI(dateTimeAsInteger: 1601_510_459_000)
        
        // Assert
        let exp = expDate!.timeIntervalSince1970
        let res = dtai.dateTimeAsDate.timeIntervalSince1970
        
        XCTAssertEqual(exp, res)
    }

    func testDateTime_StripTime_1() throws {
        // Arrange
        let RFC3339DateFormatter = DateFormatter()
        RFC3339DateFormatter.locale = Locale(identifier: "en_US_POSIX")
        RFC3339DateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZZZZZ"
        RFC3339DateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
         
        let string = "2020-10-01T00:00:00-00:00"
        let expDate = RFC3339DateFormatter.date(from: string)
        
        // Act
        let dtai: DTAI = DTAI(dateTimeAsInteger: 1601_510_459_000)
        
        // Assert
        let exp = expDate!.timeIntervalSince1970
        let res = dtai.datePartAsDate.timeIntervalSince1970
        
        XCTAssertEqual(exp, res)
    }
    
    func testDateTime_ShowStyle() throws {
        // Arrange
        let RFC3339DateFormatter = DateFormatter()
        RFC3339DateFormatter.locale = Locale(identifier: "en_US_POSIX")
        RFC3339DateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZZZZZ"
        RFC3339DateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
         
        let string = "2020-10-01T13:33:44-00:00"
        let expDate = RFC3339DateFormatter.date(from: string)
        let dtai: DTAI = DTAI(dateTimeAsDate: expDate!)
        
        // Act
        let result = dtai.DateTimeForDisplay()
        
        // Assert
        //print("Result for formatted Date Time: \(result)")
        XCTAssertEqual(result, "10/1/20, 1:33 PM")
    }
    
    func testDateOnly_ShowStyle() throws {
        // Arrange
        let RFC3339DateFormatter = DateFormatter()
        RFC3339DateFormatter.locale = Locale(identifier: "en_US_POSIX")
        RFC3339DateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZZZZZ"
        RFC3339DateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
         
        let string = "2020-10-01T13:33:44-00:00"
        let expDate = RFC3339DateFormatter.date(from: string)
        let dtai: DTAI = DTAI(dateTimeAsDate: expDate!)
        
        // Act
        let result = dtai.DateForDisplay()
        
        // Assert
        //print("Result for formatted Date only: \(result)")
        XCTAssertEqual(result, "10/1/20")
    }
    
    func testParseString_1() throws {
        // Arrange
        let expDateTimeInt: Int64 = 1601424000000
        let testValue: String = "30.09.2020, 00:00 Uhr"
        
        // Act
        let result = DTAI.init(dateStringFromCovidServer_DE: testValue).dateTimeAsInteger
        
        // Assert
        XCTAssertEqual(expDateTimeInt, result)
    }
    
    func testParseString_0() throws {
        // Arrange
        let expDateTimeInt: Int64 = 1601427540_000
        let testValue: String = "30.09.2020, 00:59 Uhr"

        // Act
        let result = DTAI.init(dateStringFromCovidServer_DE: testValue).dateTimeAsInteger

        // Assert
        XCTAssertEqual(expDateTimeInt, result)
    }

    func testDateOnly_Parsen_1() throws {
        // Arrange
        let RFC3339DateFormatter = DateFormatter()
        RFC3339DateFormatter.locale = Locale(identifier: "en_US_POSIX")
        RFC3339DateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZZZZZ"
        RFC3339DateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
         
        let string = "2020-09-30T00:00:00-00:00"
        let test = RFC3339DateFormatter.date(from: string)
        //let dtai: DTAI = DTAI(dateTimeAsDate: test!)
        let exp: Int64 = 1601424000000
        
        // Act
        let result = DTAI(dateTimeAsDate: test!).dateTimeAsInteger
        
        // Assert
        XCTAssertEqual(exp, result)
    }
    
    func testDateOnly_Parsen_2() throws {
        // Arrange
        let RFC3339DateFormatter = DateFormatter()
        RFC3339DateFormatter.locale = Locale(identifier: "en_US_POSIX")
        RFC3339DateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZZZZZ"
        RFC3339DateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
         
        let string = "2020-09-30T00:00:00-00:00"
        let expInt: Int64 = Int64(RFC3339DateFormatter.date(from: string)!.timeIntervalSince1970) * 1000
        
        let stringToTest = "30.09.2020, 00:00 Uhr"
       
        // Act
        let result = DTAI(dateStringFromCovidServer_DE: stringToTest).dateTimeAsInteger
        
        // Assert
        XCTAssertEqual(expInt, result)
        XCTAssertEqual(1601424000000, result)
    }
    
    func testDateOnly_Parsen_3() throws {
        // Arrange
        let RFC3339DateFormatter = DateFormatter()
        RFC3339DateFormatter.locale = Locale(identifier: "en_US_POSIX")
        RFC3339DateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZZZZZ"
        RFC3339DateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
         
        let string = "2020-09-30T00:59:00-00:00"
        let expInt: Int64 = Int64(RFC3339DateFormatter.date(from: string)!.timeIntervalSince1970) * 1000
        
        let stringToTest = "30.09.2020, 00:59 Uhr"
       
        
        // Act
        let result = DTAI(dateStringFromCovidServer_DE: stringToTest).dateTimeAsInteger
        
        // Assert
        XCTAssertEqual(expInt, result)
    }
    
    func testDateOnly_Parsen_Empty() throws {
        // Arrange
        let stringToTest = ""
        let testStruct: DTAI
        
        // Act
        testStruct = DTAI(dateStringFromCovidServer_DE: stringToTest)
        let result = testStruct.dateTimeAsInteger
        
        // Assert
        XCTAssertEqual(0, result)
        XCTAssertEqual(true, testStruct.parseError)
    }
}
