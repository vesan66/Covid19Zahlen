//
//  UpdateManager_BackgroundTask.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 08.10.20.
//  Copyright © 2020 Dirk Scheidt. All rights reserved.
//

import Foundation
import os.log

public class UpdateManager_BackgroundTask: UpdateManager {
    
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
        
        if self.sensorDataBaseNeedsUpdate.IsSatisfied() == false {
            Logger.log.error("Local DB is up-to-date.")
            return IsUpdateAllowed.no_upToDate
        }
        
        return result
    }
    
    override func AfterMath(updateAllowed: IsUpdateAllowed, updateStatus: PerformedUpdateStatus) -> Bool {
        let _ = super.AfterMath(updateAllowed: updateAllowed, updateStatus: updateStatus)
        
        let _ = self.sensorDataBaseNeedsUpdate.AfterMath(updateAllowed: updateAllowed, updateStatus: updateStatus)
        
        return true
    }
    
    deinit {
        self.DeInitializeSubModules()
    }

}
