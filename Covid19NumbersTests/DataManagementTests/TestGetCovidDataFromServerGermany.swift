//
//  TestGetCovidDataFromServerGermany.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 09.10.20.
//  Copyright © 2020 Dirk Scheidt. All rights reserved.
//

import XCTest
@testable import Covid19Numbers

class TestGetCovidDataFromServerGermany: XCTestCase {
    
    override func setUpWithError() throws {
        self.IsUnitTestParameterSet()
    }

    override func tearDownWithError() throws {
    }

    func testDateConversion_1() throws {
        // Arrange
        let testDate: String = "23.09.2020, 00:00 Uhr"
        let expected: Date = self.HelperDate(dateString: "2020/09/23 00:00")
        
        // Act
        let datetime1000: Int64 = ServerRequestHelpers.TranslateLastUpdateToInt64(dateString: testDate)
        
        // Assert
        XCTAssertEqual(datetime1000, Int64(expected.timeIntervalSince1970 * 1000), "Conversion not OK.")
    }

    func testDateConversion_2() throws {
        // Arrange
        let testDate: String = "23.09.2020, 00:59 Uhr"
        let expected: Date = self.HelperDate(dateString: "2020/09/23 00:59")
        
        // Act
        let datetime1000: Int64 = ServerRequestHelpers.TranslateLastUpdateToInt64(dateString: testDate)
        
        // Assert
        XCTAssertEqual(datetime1000, Int64(expected.timeIntervalSince1970 * 1000), "Conversion not OK.")
    }
    
    func HelperDate(dateString: String) -> Date {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy'/'MM'/'dd' 'HH':'mm"
        formatter.locale = Locale.init(identifier: "de_DE")
        formatter.timeZone = TimeZone.init(secondsFromGMT: 0)
        let date = formatter.date(from: dateString)!
        return date
    }

}
