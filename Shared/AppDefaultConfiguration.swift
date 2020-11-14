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
#else
let appMode = AppMode.production
#endif

#if MAINAPP
#if DEBUG
let fullJasonPrint: Bool = false
let deleteOnEveryStartup: Bool = false
#else
let fullJasonPrint: Bool = false
#endif
#endif


final class AppDefaultConfiguration {
    
    public static let containerSharedGroup:           String = "group.com.Covid19Numbers"
    public static let userDataMonitorKey:             String = "userDataMonitor"
    
    private static let dbNameForTesting:        String = "covidnumberstesting.sqlite"
    private static let dbNameForUnitTesting:    String = "covidnumbersunittesting.sqlite"
    private static let dbNameProduction:        String = "covidnumbers.sqlite"
    private static let dbNamePreview:           String = "covidnumberspreview.sqlite"
    
    public static let keepTimeSpanOfDaysDefault: Int = 8
    
    #if MAINAPP
    public static let timeForNextManualRetry:          TimeInterval =         10 * 60  // 10 minutes
    public static let timeForNextonActivateRefresh:    TimeInterval =     1 * 60 * 60  // 1 hour
    public static let timeSpanUntilNextBackgroundFetch:TimeInterval =     1 * 60 * 60  // 1 hour
    
    public static let backgroundTaskIdentifierProcess: String = "com.Covid19Numbers.process"
    public static let backgroundTaskIdentifierRefresh: String = "com.Covid19Numbers.refresh"
    
    public static let backgroundURLSessionIdentifier: String = "com.Covid19Numbers.backgroundURLSession"

    public static let displayInfoForSeconds: TimeInterval = 3
    
    public static let InfoText_RTF_FileName: String = "infotext_"
    public static let info_RTF_Text: NSAttributedString = LanguageHelpers.LoadNSAttributedString(AppDefaultConfiguration.InfoText_RTF_FileName)
    
    public static let barMaxValue: Double = 50
    
    public static let deleteCasesOlderThenDefault: Int = keepTimeSpanOfDaysDefault
    #endif
    
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
