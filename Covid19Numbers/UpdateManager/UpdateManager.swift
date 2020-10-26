//
//  UpdateManager.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 08.10.20.
//  Copyright © 2020 Dirk Scheidt. All rights reserved.
//


import Foundation
import os.log


public class UpdateManager: NSObject {
    
    private var sensorNetworkMonitor = NetworkMonitor()
    
    func InitializeSubModules() {
        let _ = self.sensorNetworkMonitor.Initialize()
    }
    
    func DeInitializeSubModules() {
        let _ = self.sensorNetworkMonitor.DeInitialize()
    }
    
    func UpdateIsAllowed() -> IsUpdateAllowed {
        
        if self.sensorNetworkMonitor.IsSatisfied() == false {
            Logger.log.error("Sensorresult: No network.")
            return IsUpdateAllowed.no_noNetwork
        }

        return IsUpdateAllowed.yes_allowed
    }
    
    
    func AfterMath(updateAllowed: IsUpdateAllowed, updateStatus: PerformedUpdateStatus) -> Bool {
        let _ = self.sensorNetworkMonitor.AfterMath(updateAllowed: updateAllowed, updateStatus: updateStatus)
        return true
    }
    
    
    deinit {
        self.DeInitializeSubModules()
    }

}
