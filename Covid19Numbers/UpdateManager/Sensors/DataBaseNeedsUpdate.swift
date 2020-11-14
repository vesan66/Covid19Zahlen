//
//  DataBaseNeedsUpdate.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 08.10.20.
//  Copyright © 2020 Dirk Scheidt. All rights reserved.
//

import Foundation
import os.log

class DataBaseNeedsUpdate: NSObject, Sensor, SensorAfterMath {

    private weak var updateManager: UpdateManager?
    
    
    func SetParent(_ updateManager: UpdateManager) {
        self.updateManager = updateManager
    }
    
    
    func IsSatisfied() -> Bool {
        Logger.funcStart.notice("IsSatisfied")
        var result = false
        let dbTimeStamp = GetLatestTimeStampOfLocalDatabase()
        let serverTimeStamp = GetLatestTimeStampOfServer()
        
        Logger.data.notice("Timestamp compare: DB-Timestamp: \(dbTimeStamp, privacy: .public) / Server-Timestamp: \(serverTimeStamp, privacy: .public)")
        
        if dbTimeStamp < serverTimeStamp {
            result = true
        }
        
        Logger.data.notice("DatabaseNeedsUpdate: \(result, privacy: .public)")
        return result
    }
    
    
    func Initialize() -> Bool {
        return true
    }
    
    
    func DeInitialize() -> Bool {
        return true
    }
    
    
    func AfterMath(updateAllowed: IsUpdateAllowed, updateStatus: PerformedUpdateStatus) -> Bool {
        return true
    }
    
    
    func GetLatestTimeStampOfServer() -> DTAI.DateTime1000 {
        Logger.funcStart.notice("GetLatestTimeStampOfServer")
        let getTimeStamp: GetActualTimeStampFromServer = GetActualTimeStampFromServer()
        let timeStamp = getTimeStamp.getDataAwait()
        return timeStamp
    }
    
    
    func GetLatestTimeStampOfLocalDatabase() -> Int64 {
        return UserStorage.share.latestTimeStampAtLocalDB
    }
    
}
