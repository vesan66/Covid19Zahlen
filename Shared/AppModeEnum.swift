//
//  AppModeEnum.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 26.10.20.
//  Copyright © 2020 Dirk Scheidt. All rights reserved.
//

import Foundation

public enum AppMode {
    case production
    #if DEBUG
    case test
    case preview
    case unittest
    #endif
    
    func asSuffix() -> String {
        switch self {
            case .production:
                return ""
            #if DEBUG
            case .test:
                return "T"
            case .preview:
                return "P"
            case .unittest:
                return "UT"
            #endif
        }
    }
    func description() -> String {
        switch self {
            case .production:
                return "Production"
            #if DEBUG
            case .test:
                return "Testing"
            case .preview:
                return "Preview"
            case .unittest:
                return "Unittesting"
            #endif
        }
    }
    
    func launchAppController() -> Bool {
        switch self {
            case .production:
                return true
            #if DEBUG
            case .test:
                return true
            case .preview:
                return false
            case .unittest:
                return false
            #endif
        }
    }
    
    func getOnlyDummyData() -> Bool {
        switch self {
            case .production:
                return false
            #if DEBUG
            case .test:
                return true
            case .preview:
                return true
            case .unittest:
                return true
            #endif
        }
    }
}
