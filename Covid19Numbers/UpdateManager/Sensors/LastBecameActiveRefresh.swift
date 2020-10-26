//
//  LastBecameActiveRefresh.swift.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 08.10.20.
//  Copyright © 2020 Dirk Scheidt. All rights reserved.
//

import Foundation


class LastBecameActiveRefresh: NSObject, Sensor, SensorAfterMath {
    
    func IsSatisfied() -> Bool {
        let lastExec = getDateTimeIntervall()
        let now = Date().timeIntervalSince1970
        let nextPossibleExecution = lastExec + UserStorage.share.onActivateUpdateDelay
        if nextPossibleExecution < now {
            return true
        }
        return false
    }

    func Initialize() -> Bool {
        return true
    }
    
    func DeInitialize() -> Bool {
        return true
    }
    
    func AfterMath(updateAllowed: IsUpdateAllowed, updateStatus: PerformedUpdateStatus) -> Bool {
        var needSet = false
        
        switch updateAllowed {
            case IsUpdateAllowed.no_upToDate, IsUpdateAllowed.yes_allowed:
                needSet = true
            default:
                needSet = false
        }

        if needSet == true {
            let nextPossibleExecution = Date().timeIntervalSince1970 + UserStorage.share.onActivateUpdateDelay
            self.setDateTimeIntervall(nextPossibleExecution)
        }
        
        return true
    }
    
    func getDateTimeIntervall() -> TimeInterval {
        return UserStorage.share.lastOnActivateUpdateTry
    }
    
    func setDateTimeIntervall(_ timeInterval: TimeInterval) {
        DispatchQueue.main.async() {
            UserStorage.share.lastOnActivateUpdateTry = timeInterval
        }
    }

}
