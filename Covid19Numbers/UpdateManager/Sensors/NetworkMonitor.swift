//
//  NetworkMonitor.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 08.10.20.
//  Copyright © 2020 Dirk Scheidt. All rights reserved.
//


import Foundation
import Network
import os.log

class NetworkMonitor: NSObject, Sensor, SensorAfterMath {
    
    func IsSatisfied() -> Bool {
        return NetworkMonitorService.shared.isReachable
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

    deinit {
        let _ = self.DeInitialize()
    }
}
