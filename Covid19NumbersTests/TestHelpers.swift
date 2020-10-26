//
//  TestHelpers.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 09.10.20.
//  Copyright © 2020 Dirk Scheidt. All rights reserved.
//

import XCTest
@testable import Covid19Numbers

class TestHelpers: XCTestCase {

    override func setUpWithError() throws {
        self.IsUnitTestParameterSet()
    }
    
    func testFormatDoubleLocale() throws {
        // Arrange
        let number: Double = 4.55
        let numberExp: String = "4,6"
        
        // Act
        let result = DisplayHelpers.FormatDoubleLocale(number, locale: Locale(identifier: "de_DE"))
        
        // Assert
        XCTAssertEqual(result, numberExp)
    }

    func testFormatIntegerLocale() throws {
        // Arrange
        let number: Int64 = 1000
        let numberExp: String = "1.000"
        
        // Act
        let result = DisplayHelpers.FormatIntegerLocale(number, locale: Locale(identifier: "de_DE"))
        
        // Assert
        XCTAssertEqual(result, numberExp)
    }
}
