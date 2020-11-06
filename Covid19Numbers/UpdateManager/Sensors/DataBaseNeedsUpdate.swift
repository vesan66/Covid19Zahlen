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
        let dbTimeStamp = GetLatestTimeStampOfLocalDatabase()
        let serverTimeStamp = GetLatestTimeStampOfServer()

        if dbTimeStamp < serverTimeStamp {
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
        return true
    }
    
    func GetLatestTimeStampOfServer() -> Int64 {
        Logger.funcStart.notice("GetLatestTimeStampOfServer")
        let serverCall = GetCovidDataFromServerGermany_CheckDateTime()
        let timeStamp = serverCall.GetTimeStampOfData()
        Logger.data.notice("Timestamp from server: \(timeStamp)")
        return Int64(timeStamp * 1000)
    }
    
    func GetLatestTimeStampOfLocalDatabase() -> Int64 {
        return UserStorage.share.latestTimeStampAtLocalDB
    }
    
}
