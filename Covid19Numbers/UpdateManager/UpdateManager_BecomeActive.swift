//
//  UpdateManager_BecomeActive.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 08.10.20.
//  Copyright © 2020 Dirk Scheidt. All rights reserved.
//

import Foundation
import os.log

public class UpdateManager_BecomeActive: UpdateManager {
    
    private var lastBecameActiveRefresh = LastBecameActiveRefresh()
    private var sensorDataBaseNeedsUpdate = DataBaseNeedsUpdate()
    

    override init() {
        super.init()
        self.sensorDataBaseNeedsUpdate.SetParent(self)
    }
    
    override func UpdateIsAllowed() -> IsUpdateAllowed {
        let result = super.UpdateIsAllowed()
        if result != IsUpdateAllowed.yes_allowed {
            return result
        }
        
        if self.lastBecameActiveRefresh.IsSatisfied() == false {
            Logger.log.error("Due the onActivate refresh time of \((UserStorage.share.onActivateUpdateDelay/60)) minutes, update is not allowed.")
            return IsUpdateAllowed.no_activationTimeBlock
        }
        
        if self.sensorDataBaseNeedsUpdate.IsSatisfied() == false {
            Logger.log.error("Local DB is up-to-date.")
            return IsUpdateAllowed.no_upToDate
        }
        
        return result
    }
    
    override func AfterMath(updateAllowed: IsUpdateAllowed, updateStatus: PerformedUpdateStatus) -> Bool {
        let _ = super.AfterMath(updateAllowed: updateAllowed, updateStatus: updateStatus)
        
        let _ = self.lastBecameActiveRefresh.AfterMath(updateAllowed: updateAllowed, updateStatus: updateStatus)
        let _ = self.sensorDataBaseNeedsUpdate.AfterMath(updateAllowed: updateAllowed, updateStatus: updateStatus)
        
        return true
    }
    
    deinit {
        self.DeInitializeSubModules()
    }

}
