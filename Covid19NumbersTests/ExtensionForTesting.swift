//
//  ExtensionForTesting.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 09.10.20.
//  Copyright © 2020 Dirk Scheidt. All rights reserved.
//

import Foundation
import XCTest

extension XCTestCase {
    func IsUnitTestParameterSet() {
        if ProcessInfo.processInfo.arguments.contains("-UNITTEST") == false {
            fatalError("Unittest flag '-UNITTEST' at startup not set.")
        }
    }
    
}

