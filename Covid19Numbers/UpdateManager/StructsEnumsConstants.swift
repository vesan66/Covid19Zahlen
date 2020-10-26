//
//  StructsEnumsConstants.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 08.10.20.
//  Copyright © 2020 Dirk Scheidt. All rights reserved.
//

import Foundation

public enum IsUpdateAllowed: String, CustomStringConvertible {
    case undefined = "Undefined"
    case yes_allowed = "Is allowed"
    case no_noNetwork = "No, no network."
    case no_ManualtimeBlock = "No, manual freuqency block"
    case no_activationTimeBlock = "No, activation freuqency block"
    case no_upToDate = "No, the server has no new data."
    case no_DatabaseHasData = "No, the DB already has data. No initial setup alowed."
    
    public var description: String {
        get {
            return self.rawValue
        }
    }
}


public enum PerformedUpdateStatus: String, CustomStringConvertible {
    case undefined = "undefined"
    case success = "success"
    case serverHasNoNewData = "serverHasNoNewData"
    case failed = "failed"
    
    public var description: String {
        get {
            return self.rawValue
        }
    }
}


protocol Sensor {
    func IsSatisfied() -> Bool
    func Initialize() -> Bool
    func DeInitialize() -> Bool
}


protocol SensorAfterMath {
    func AfterMath(updateAllowed: IsUpdateAllowed, updateStatus: PerformedUpdateStatus) -> Bool
}


struct ResultsAfterUpdate {
    var newDataBaseTimeStampLocal: TimeInterval
}
