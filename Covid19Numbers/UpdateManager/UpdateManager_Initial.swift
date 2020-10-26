//
//  UpdateManager_Initial.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 08.10.20.
//  Copyright © 2020 Dirk Scheidt. All rights reserved.
//

import Foundation
import os.log


public class UpdateManager_Initial: UpdateManager { // Means A cold start of the app
    
    private var lastManualRefreshChecker: LastManualRefresh! = LastManualRefresh()
    private var dbIsEmpty = DatabaseIsInital()
    

    override init() {
        super.init()
    }
    
    override func UpdateIsAllowed() -> IsUpdateAllowed {
        let result = super.UpdateIsAllowed()
        if result != IsUpdateAllowed.yes_allowed {
            return result
        }
        
        if self.dbIsEmpty.IsSatisfied() == false {
            Logger.log.error("Database has already data.")
            return IsUpdateAllowed.no_DatabaseHasData
        }
        
        return result
    }
    
    override func AfterMath(updateAllowed: IsUpdateAllowed, updateStatus: PerformedUpdateStatus) -> Bool {
        let _ = super.AfterMath(updateAllowed: updateAllowed, updateStatus: updateStatus)
        let _ = self.dbIsEmpty.AfterMath(updateAllowed: updateAllowed, updateStatus: updateStatus)
        
        return true
    }
    
    deinit {
        self.DeInitializeSubModules()
    }

}
