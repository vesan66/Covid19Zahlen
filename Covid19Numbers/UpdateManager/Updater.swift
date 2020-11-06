//
//  Updater.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 08.10.20.
//  Copyright © 2020 Dirk Scheidt. All rights reserved.
//

import Foundation
import os.log




public class Updater: NSObject {
    
    public let updateSerialQueue = DispatchQueue(label: "updater.updateQueue", qos: .background)
    
    public enum UpdateKind: String {
        case backgroundTask = "backgroundTask"
        case manual         = "manual"
        case initial        = "initial"
        case onActivateApp  = "onActivateApp"
    }
    
    private enum UpdateProcessing: CustomStringConvertible {
        
        case idle
        case background
        case foreground
        
        var description: String {
            switch self {
                case .idle: return "idle"
                case .background: return "background"
                case .foreground: return "foreground"
            }
        }
    }
    
    private var inProcess = UpdateProcessing.idle {
        didSet {
            Logger.log.notice("InForegroundUpdate was set to '\(self.inProcess, privacy: .public)'.")
        }
    }

    
    public func GetQueue() -> DispatchQueue? {
        // This seems strange, but: The foreground-processes, like manual update and so on have their own queue.
        // The BackgroundTask runs better, when launched on 'DispatchQueue.main'.
        
        switch self.inProcess {
            case .background:
                return DispatchQueue.main
            case .foreground:
                return self.updateSerialQueue
            default:
                return nil
        }
    }
        
    private func AnyUpdatePending() -> Bool {
        Logger.funcStart.notice("AnyUpdatePending")
        Logger.log.notice("InProcess-Flag is: '\(self.inProcess, privacy: .public)'")
        return !(self.inProcess == UpdateProcessing.idle)
    }
    
    
    fileprivate func ClearProcessingFlag() {
        Logger.funcStart.notice("ClearAnyUpdatePendingFlag")
        self.inProcess = UpdateProcessing.idle
    }
    
    
    // MARK: - Public Functions
    public func DoManualUpdateAsync() {
        Logger.funcStart.notice("DoManualUpdate")
        self.UpdateSelector(.manual)
    }
    
    public func DoReactivateAppUpdateAsync() {
        Logger.funcStart.notice("DoReactivateAppUpdate")
        self.UpdateSelector(.onActivateApp)
    }
    
    public func DoBackgroundUpdateAwait() -> Bool {
        Logger.funcStart.notice("DoBackgroundUpdate")
        fatalError("Currently not supported")
//        self.UpdateSelector(.backgroundTask)
//        return false
    }
    
    public func DoInitialUpdateAsync() {
        Logger.funcStart.notice("DoInitialUpdate")
        self.UpdateSelector(.initial)
    }
    
    
    
    private func UpdateSelector(_ kind: UpdateKind) {
        Logger.funcStart.notice("=======================UpdateSelector: Selected kind: \(kind.rawValue, privacy: .public)")
  
        if AppController.share.sqliteMan.dbIsOpen == false { Logger.log.notice("SQLite not ready. Senseless to do anything."); return }
        
        if self.AnyUpdatePending() == true { Logger.log.notice("Skipping update, because ones pending."); return }
        
        let m_um: UpdateManager
        
        switch kind {
            case .backgroundTask:
                Logger.log.error("Background processind deactivated.")
                return
//                self.inProcess = .background
//                m_um = UpdateManager_BackgroundTask()
            case .initial:
                self.inProcess = .foreground
                m_um = UpdateManager_Initial()
            case .onActivateApp:
                self.inProcess = .foreground
                m_um = UpdateManager_BecomeActive()
            case .manual:
                self.inProcess = .foreground
                m_um = UpdateManager_Manual()
        }
        
        if let q = self.GetQueue() {
            q.async { [weak self] in
                guard let self = self else { return }
                self.Update(m_um)
            }
        }
    }
    
    
    // MARK: - Update Function
    
    //var callbackObj: CallBackObject?
    
    private func Update(_ m_um: UpdateManager) {
        Logger.funcStart.notice("Update")

        m_um.InitializeSubModules()
        
        // Check
        let updateIsAllowed = m_um.UpdateIsAllowed()
        Logger.data.notice("UpdateIsAllowed overall-result: \(updateIsAllowed, privacy: .public)")
        
        // Call the Update. At the end, the CallBackObject calls aftermath!
        let callbackObj = CallBackObject(updater: self, updateManager: m_um, updateIsAllowed: updateIsAllowed)
        //callbackObj = CallBackObject(updater: self, updateManager: m_um, updateIsAllowed: updateIsAllowed)
        
        // IMPORTANT: Call the 'callbackObj'!
        if updateIsAllowed == .yes_allowed {
            self.PerformUpdate(callbackObj)
        } else {
            callbackObj.DoCallBack(updateResult: .undefined)
        }
        
    }
    
    
    private func PerformUpdate(_ callBackObject: CallBackObject) {
        Logger.funcStart.notice("PerformUpdate")

        // Get a new Instance for the Serverfetch
        let getDataFromServer = GetCovidDataFromServerGermany()
        
        // Use the given SQLite-Man
        let sqliteMan = AppController.share.sqliteMan

        // Get new Data from the Server
        Logger.log.notice("Going to execute 'GetCasesForCountiesAsync'.")
        getDataFromServer.GetCasesForCountiesAsync(){ newReceivedCases in
            if let newReceivedCases = newReceivedCases {
                Logger.data.notice("Received \(newReceivedCases.count, privacy: .public) from the servers.")
                if newReceivedCases.count == 0 {
                    // No new Data at the server!
                    Logger.log.error("GetCasesForCountiesAsync returned 0 cases.")
                    callBackObject.DoCallBack(updateResult: .serverHasNoNewData)
                    return
                } else {
                    // Insert new Items in SQLite.
                    Logger.log.notice("Going to insert Data: InsertItemsAsyncWithCallback().")
                    sqliteMan.InsertItemsAsyncWithCallback(items: newReceivedCases, callbackObject: callBackObject)
                    return
                }
            } else {
                // ServerError?
                Logger.log.error("GetCasesForCountiesAsync returned NIL.")
                callBackObject.DoCallBack(updateResult: .failed)
                return
            }
        }
    }
    
    
    private func WaitForResult(monitor: CallBackObject, timetowait: TimeInterval) -> DispatchTimeoutResult {
        let timeOutInSeconds = DispatchTime.now() + DispatchTimeInterval.seconds(Int(timetowait))
        while DispatchTime.now() <= timeOutInSeconds {
            if monitor.finished == true {
                return .success
            }
            sleep(1)
            print("Waiting ... " + DispatchTime.now().rawValue.description)
        }
        return .timedOut
    }
    
    
    func AfterMath(_ m_um: UpdateManager, updateIsAllowed: IsUpdateAllowed, updateResultIn: PerformedUpdateStatus ) {
        Logger.funcStart.notice("AfterMath")
        
        var updateResult = updateResultIn
        
        // LocalDatabase is upToDate: Nothing to do.
        if updateIsAllowed == .no_upToDate {
            
            // Nothing to do: This is a success
            updateResult = PerformedUpdateStatus.success
            
        } // Everything else neagtive in 'updateIsAllowed' is an error.
        
        
        // Do updates for the UpdateChecker. E.g. set last execution time.
        let result_After = m_um.AfterMath(updateAllowed: updateIsAllowed, updateStatus: updateResult)
        
        
        DispatchQueue.main.async {
            Logger.log.notice("AfterMathEnums: updateIsAllowed = \(updateIsAllowed, privacy: .public), updateResult = \(updateResult, privacy: .public)")
        
            let obProps  = AppController.appFunctions.GetObservedProperties()
            let interCom = AppController.appFunctions.GetInterCom()
            
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
                    
                    
                    // There are new Data for display
                    obProps.appStatus = .NewDataForDisplay
                    interCom.SetNewDataInLocalDB()
                    
                    
                } else if updateResult == .failed {
                    obProps.appStatus = .ErrorGettingData
                } else if updateResult == .serverHasNoNewData {
                    obProps.appStatus = .NoNewDataOnServer
                }
            }
        }
        Logger.log.notice("AfterMath-Result: \(result_After, privacy: .public)")
    }
    
    

}


public class CallBackObject {
    private var updateManager: UpdateManager?
    private var updateIsAllowed = IsUpdateAllowed.undefined
    public private(set) var updater: Updater?
    public var finished: Bool = false
    
    private init() { }
    
    
    init(updater: Updater, updateManager: UpdateManager, updateIsAllowed: IsUpdateAllowed) {
        self.updateManager = updateManager
        self.updateIsAllowed = updateIsAllowed
        self.updater = updater
    }
    
    func DoCallBack(updateResult: PerformedUpdateStatus) {
        
        // Always set 'finished'. This execution is one-shot.
        defer { self.finished = true }
        
        // Perform the code only once.
        if self.finished { return }
        
        guard let updateManager = self.updateManager else {
            Logger.log.error("'updateManager' not set.")
            return
        }
        guard let updater = self.updater else {
            Logger.log.error("'updater' not set.")
            return
        }
        
        // Workload.
        updater.AfterMath(updateManager, updateIsAllowed: self.updateIsAllowed, updateResultIn: updateResult)
        updater.ClearProcessingFlag()
        self.updateManager = nil
        self.updater = nil
    }
    
    deinit {
        if self.finished == false {
            Logger.log.critical("******* CallBackObject was not called. *******")
            updater?.ClearProcessingFlag()
        }
    }
}
