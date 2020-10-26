//
//  AppConfiguration.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 08.10.20.
//  Copyright © 2020 Dirk Scheidt. All rights reserved.
//

import Foundation

#if DEBUG
var appMode: AppMode {
    get {
        if ProcessInfo.processInfo.arguments.contains("-UNITTEST") == true {
            return AppMode.unittest
        }
        if Int(ProcessInfo.processInfo.environment["XCODE_RUNNING_FOR_PREVIEWS"] ?? "0") == 1 {
            return AppMode.preview
        }
        //return AppMode.test            // Only dummy data and no networking.
        return AppMode.production      // Network and so on.
    }
}

let fullJasonPrint: Bool = false
let deleteOnEveryStartup: Bool = false
#else
let fullJasonPrint: Bool = false
let appMode = AppMode.production
#endif


final class AppDefaultConfiguration{
    
    private static let dbNameForTesting:        String = "covidnumberstesting.sqlite"
    private static let dbNameForUnitTesting:    String = "covidnumbersunittesting.sqlite"
    private static let dbNameProduction:        String = "covidnumbers.sqlite"
    private static let dbNamePreview:           String = "covidnumberspreview.sqlite"
    
    public static let timeForNextManualRetry:          TimeInterval =      60 * 60   // e.g. 1 hour
    public static let timeForNextonActivateRefresh:    TimeInterval =  6 * 60 * 60   // e.g. 6 hours
    public static let timeSpanUntilNextBackgroundFetch:TimeInterval =  6 * 60 * 60   // e.g. 6 hours
    
    public static let backgroundTaskIdentifierProcess: String = "com.Covid19Numbers.process"
    public static let backgroundTaskIdentifierRefresh: String = "com.Covid19Numbers.refresh"
    
    public static let displayInfoForSeconds: TimeInterval = 3
    
    public static let InfoText_RTF_FileName: String = "infotext_"
    public static let info_RTF_Text: NSAttributedString = LanguageHelpers.LoadNSAttributedString(AppDefaultConfiguration.InfoText_RTF_FileName)
    
    public static let barMaxValue: Double = 50
    
    #if DEBUG
    public static let isUnitTesting = (appMode == AppMode.unittest)
    public static var dbNameSQlite: String {
        get {
            switch appMode {
                case .production:
                    return dbNameProduction
                case .test:
                    return dbNameForTesting
                case .preview:
                    return dbNameForTesting
                case .unittest:
                    return dbNameForUnitTesting
            }
        }
    }
    #else
    public static let dbNameSQlite: String = dbNameProduction
    #endif
}
