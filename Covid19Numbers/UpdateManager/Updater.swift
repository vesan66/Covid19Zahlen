//
//  Updater.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 08.10.20.
//  Copyright © 2020 Dirk Scheidt. All rights reserved.
//

import Foundation
import os.log
import WidgetKit

public class Updater: NSObject {
    public private(set) var inForegroundUpdate: Bool = false { didSet { Logger.log.notice("InForegroundUpdate was set to '\(self.inForegroundUpdate, privacy: .public)'.")   } }
    private var inBackgroundUpdate: Bool = false { didSet { Logger.log.notice("InBackgroundUpdate was set to '\(self.inBackgroundUpdate, privacy: .public)'.")   } }
    

    
    public func resetInForegroundUpdate() {
        Logger.funcStart.notice("resetInForegroundUpdate")
        self.inForegroundUpdate = false
    }
    
    
    public func resetInBackgroundUpdate() {
        Logger.funcStart.notice("resetInBackgroundUpdate")
        self.inBackgroundUpdate = false
    }
    
    
    private func AnyUpdatePending() -> Bool {
        Logger.funcStart.notice("AnyUpdatePending")
        Logger.log.notice("InForegroundUpdate is '\(self.inForegroundUpdate, privacy: .public)'.")
        Logger.log.notice("InBackgroundUpdate is '\(self.inBackgroundUpdate, privacy: .public)'.")
        return inForegroundUpdate == true || inBackgroundUpdate == true
    }
    
    
    private func ClearAnyUpdatePendingFlag() {
        self.resetInForegroundUpdate()
        self.resetInBackgroundUpdate()
    }
    
    
    // MARK: - Update Modes
    func ManualUpdate() {
        let m_um: UpdateManager_Manual = UpdateManager_Manual()
        self.Update(m_um)
    }
    
    func onReactivateAppUpdate() {
        let m_um: UpdateManager_BecomeActive = UpdateManager_BecomeActive()
        self.Update(m_um)
    }
    
    func onBackgroundUpdate() {
        let m_um = UpdateManager_BackgroundTask()
        self.Update(m_um)
    }
    
    func onInitialUpdate() {
        let m_um = UpdateManager_Initial()
        self.Update(m_um)
    }
    
    
    // MARK: - Update Function
    private func Update(_ m_um: UpdateManager) {
        if self.AnyUpdatePending() == true {
            Logger.log.notice("Skipping update, because ones pending.")
            return
        }
        
        
        if m_um is UpdateManager_BackgroundTask {
            self.inBackgroundUpdate = true
            self.inForegroundUpdate = false
        } else {
            self.inForegroundUpdate = true
            self.inBackgroundUpdate = false
        }
        
        
        DispatchQueue.main.async { AppController.appFunctions.GetObservedProperties().newDataArrived = false }
        
        m_um.InitializeSubModules()
        
        // Check
        let updateIsAllowed = m_um.UpdateIsAllowed()
        Logger.log.notice("UpdateIsAllowed overall-result: \(updateIsAllowed, privacy: .public)")
        
        // Is allowed: Do the Work
        if updateIsAllowed == .yes_allowed {

            // MARK: - Do the Update
            let callbackObj = CallBackObject(updater: self, updateManager: m_um, updateIsAllowed: updateIsAllowed)
            PerformUpdate(callbackObj)
            return
            
        }
        self.AfterMath(m_um, updateIsAllowed: updateIsAllowed, updateResultIn: PerformedUpdateStatus.undefined)
    }
    
    func AfterMath(_ m_um: UpdateManager, updateIsAllowed: IsUpdateAllowed, updateResultIn: PerformedUpdateStatus ) {
        var updateResult = updateResultIn
        
        // LocalDatabase is upToDate: Nothing to do.
        if updateIsAllowed == .no_upToDate {
            // Nothing to do: This is a success
            updateResult = PerformedUpdateStatus.success
        }
        
        // Everything else in 'updateIsAllowed' is an error.
        
        // Do updates for the UpdateChecker. E.g. set last execution time.
        let result_After = m_um.AfterMath(updateAllowed: updateIsAllowed, updateStatus: updateResult)
        
        self.ClearAnyUpdatePendingFlag()
        
        DispatchQueue.main.async {
            Logger.log.notice("AfterMathEnums: updateIsAllowed = \(updateIsAllowed, privacy: .public), updateResult = \(updateResult, privacy: .public)")
            
            let obProps = AppController.appFunctions.GetObservedProperties()
            if updateIsAllowed == .no_upToDate {
                obProps.appStatus = .NoNewDataOnServer
            } else if updateIsAllowed == .no_noNetwork {
                obProps.appStatus = .NoNetwork
            } else if updateIsAllowed == .no_ManualtimeBlock {
                obProps.appStatus = .ManualRefreshTimeBlock
            } else if updateIsAllowed == .no_activationTimeBlock {
                obProps.appStatus = .ActivationRefreshTimeBlock
            } else if updateIsAllowed == .no_DatabaseHasData {
                obProps.appStatus = .NoInitalUpdateAllowed
            } else if updateIsAllowed == .yes_allowed {
                if updateResult == .success {
                    obProps.appStatus = .NewDataForDisplay
                    obProps.newDataArrived = true
                    
                    // Say 'Hello' to Widgets.
                    WidgetCenter.shared.reloadAllTimelines()
                    
                } else if updateResult == .failed {
                    obProps.appStatus = .ErrorGettingData
                } else if updateResult == .serverHasNoNewData {
                    obProps.appStatus = .NoNewDataOnServer
                }
            }
        }
        
        Logger.log.notice("AfterMath-Result: \(result_After, privacy: .public)")
    }
    
    
    private func PerformUpdate(_ callBackObject: CallBackObject) {
        Logger.funcStart.notice("PerformUpdate")
            
        let getDataFromServer = GetCovidDataFromServerGermany()
        let sqliteMan = AppController.share.sqliteMan
        if sqliteMan.dbIsOpen == false {
            Logger.log.error("DB is not present.")
            return
        }
        
        // Get new Data from the Server
        Logger.log.notice("Going to execute 'GetCasesForCountiesAsync'.")
        getDataFromServer.GetCasesForCountiesAsync(){ newReceivedCases in
            if let newReceivedCases = newReceivedCases {
                Logger.log.notice("Received \(newReceivedCases.count, privacy: .public) from the servers.")
                if newReceivedCases.count == 0 {
                    callBackObject.DoCallBack(updateResult: .serverHasNoNewData)
                } else {
                    sqliteMan.InsertItemsAsyncWithCallback(items: newReceivedCases, callbackObject: callBackObject)
                }
            } else {
                // ServerError?
                callBackObject.DoCallBack(updateResult: .failed)
            }
        }
    }
}


public class CallBackObject {
    private var updateManager: UpdateManager?
    private var updateIsAllowed = IsUpdateAllowed.undefined
    private var updater: Updater?
    
    private init() { }
    init(updater: Updater, updateManager: UpdateManager, updateIsAllowed: IsUpdateAllowed) {
        self.updateManager = updateManager
        self.updateIsAllowed = updateIsAllowed
        self.updater = updater
    }
    
    func DoCallBack(updateResult: PerformedUpdateStatus) {
        guard let updateManager = self.updateManager else {
            Logger.log.error("'updateManager' not set.")
            return
        }
        guard let updater = self.updater else {
            Logger.log.error("'updater' not set.")
            return
        }
        updater.AfterMath(updateManager, updateIsAllowed: self.updateIsAllowed, updateResultIn: updateResult)
        self.updateManager = nil
        self.updater = nil
    }
}
