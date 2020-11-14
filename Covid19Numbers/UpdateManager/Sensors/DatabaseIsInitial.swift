//
//  DatabaseIsInitial.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 08.10.20.
//  Copyright © 2020 Dirk Scheidt. All rights reserved.
//

import Foundation
import os.log

class DatabaseIsInital: NSObject, Sensor, SensorAfterMath {

    private weak var updateManager: UpdateManager?
    
    
    func SetParent(_ updateManager: UpdateManager) {
        self.updateManager = updateManager
    }
    
    
    func IsSatisfied() -> Bool {
        let dbIsEmpty = DBIsEmpty()

        if dbIsEmpty == true {
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
        if updateAllowed == .yes_allowed && updateStatus == .success {
            DispatchQueue.main.async(){
                UserStorage.share.databaseIsEmpty = false
            }
        }
        return true
    }

    
    func DBIsEmpty() -> Bool {
        return UserStorage.share.databaseIsEmpty
    }
    
}
