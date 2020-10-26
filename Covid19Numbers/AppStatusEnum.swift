//
//  ErrorEnum.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 09.10.20.
//  Copyright © 2020 Dirk Scheidt. All rights reserved.
//

import Foundation

public enum AppStatusEnum: Int {
    case Undefined = 1
    case Startup = 2
    case NoError = 3
    case DataBaseIsEmpty = 4
    case NoNetwork = 5
    case NoNewDataOnServer = 6
    case ManualRefreshTimeBlock = 7
    case DatabaseError = 8
    case NewDataForDisplay = 9
    case ActivationRefreshTimeBlock = 10
    case ErrorGettingData = 11
    case NoInitalUpdateAllowed = 12
    case CheckingGettingNewData = 13
    
    var description : String {
        get {
            switch(self) {
            case .Undefined:
                return AppStatusEnum_LS.Undefined
            case .Startup:
                return AppStatusEnum_LS.Startup
            case .NoError:
                return AppStatusEnum_LS.NoError
            case .DataBaseIsEmpty:
                return AppStatusEnum_LS.DataBaseIsEmpty
            case .NoNetwork:
                return AppStatusEnum_LS.NoNetwork
            case .NoNewDataOnServer:
                return AppStatusEnum_LS.NoNewDataOnServer
            case .ManualRefreshTimeBlock:
                return AppStatusEnum_LS.ManualRefreshTimeBlock
            case .DatabaseError:
                return AppStatusEnum_LS.DatabaseError
            case .NewDataForDisplay:
                return AppStatusEnum_LS.NewDataForDisplay
            case .ActivationRefreshTimeBlock:
                return AppStatusEnum_LS.ActivationRefreshTimeBlock
            case .ErrorGettingData:
                return AppStatusEnum_LS.ErrorGettingData
            case .NoInitalUpdateAllowed:
                return AppStatusEnum_LS.NoInitalUpdateAllowed
            case .CheckingGettingNewData:
                return AppStatusEnum_LS.CheckingGettingNewData
            }
        }
    }
    
    var notifyUser : Bool {
        get {
            switch(self) {
            case .NoNetwork:
                return true
            case .NoNewDataOnServer:
                return true
            case .ManualRefreshTimeBlock:
                return true
            case .DatabaseError:
                return true
            case .CheckingGettingNewData:
                return true
            default:
                return false
            }
        }
    }
}


public struct AppStatusEnum_LS {
    static let Undefined                = NSLocalizedString("Undefined", comment: "")
    static let Startup                  = NSLocalizedString("Startup", comment: "")
    static let NoError                  = NSLocalizedString("NoError", comment: "")
    static let DataBaseIsEmpty          = NSLocalizedString("DataBaseIsEmpty", comment: "")
    static let NoNetwork                = NSLocalizedString("NoNetwork", comment: "")
    static let NoNewDataOnServer        = NSLocalizedString("NoNewDataOnServer", comment: "")
    static let ManualRefreshTimeBlock   = String(format: NSLocalizedString("ManualRefreshTimeBlock", comment: ""), DisplayHelpers.FormatIntegerLocale(Int64(AppDefaultConfiguration.timeForNextManualRetry / 60 )))
    static let DatabaseError            = NSLocalizedString("DatabaseError", comment: "")
    static let NewDataForDisplay        = NSLocalizedString("NewDataForDisplay", comment: "")
    static let ActivationRefreshTimeBlock        = String(format: NSLocalizedString("ActivationRefreshTimeBlock", comment: ""), DisplayHelpers.FormatIntegerLocale(Int64(AppDefaultConfiguration.timeForNextonActivateRefresh / 60 / 60 )) )
    static let ErrorGettingData        = NSLocalizedString("ErrorGettingData", comment: "")
    static let NoInitalUpdateAllowed        = NSLocalizedString("NoInitalUpdateAllowed", comment: "")
    static let CheckingGettingNewData        = NSLocalizedString("CheckingGettingNewData", comment: "")
}
