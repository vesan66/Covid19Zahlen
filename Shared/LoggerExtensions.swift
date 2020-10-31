//
//  LoggerExtensions.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 07.10.20.
//  Copyright © 2020 Dirk Scheidt. All rights reserved.
//

import Foundation
import os.log

extension Logger {
    private static var subsystem = Bundle.main.bundleIdentifier!

    /// Logs the view cycles like viewDidLoad.
    static let viewCycle = Logger(subsystem: subsystem, category: "viewcycle")
    
    /// Log data informations like returnvalues or entryvalues.
    static let data = Logger(subsystem: subsystem, category: "data")
    
    /// Normal. Daily use.
    static let log = Logger(subsystem: subsystem, category: "normal")
    
    /// Function start
    static let funcStart = Logger(subsystem: subsystem, category: "function start")
}
