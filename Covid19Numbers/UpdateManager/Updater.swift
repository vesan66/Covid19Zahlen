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
        self.overallUpdateResult = .undefined
    }
    
    
    // MARK: - Public Functions
    public func DoManualUpdateAsync() {
        Logger.funcStart.notice("DoManualUpdate")
        let _ = self.UpdateSelector(.manual)
    }
    
    public func DoReactivateAppUpdateAsync() {
        Logger.funcStart.notice("DoReactivateAppUpdate")
        let _ = self.UpdateSelector(.onActivateApp)
    }
    
    public func DoBackgroundUpdateAwait() -> Bool {
        Logger.funcStart.notice("DoBackgroundUpdate")
//        fatalError("Currently not supported")
        return self.UpdateSelector(.backgroundTask) ?? false
    }
    
    public func DoInitialUpdateAsync() {
        Logger.funcStart.notice("DoInitialUpdate")
        let _ = self.UpdateSelector(.initial)
    }
    
    
    
    private func UpdateSelector(_ kind: UpdateKind) -> Bool? {
        Logger.funcStart.notice("=======================UpdateSelector: Selected kind: \(kind.rawValue, privacy: .public)")
  
        if AppController.share.sqliteMan.dbIsOpen == false { Logger.log.notice("SQLite not ready. Senseless to do anything."); return false}
        
        if self.AnyUpdatePending() == true { Logger.log.notice("Skipping update, because ones pending."); return false}
        
        let m_um: UpdateManager
        
        switch kind {
            case .backgroundTask:
//                Logger.log.error("Background processing with this function is deactivated.")
//                return
                self.inProcess = .background
                m_um = UpdateManager_BackgroundTask()
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
        
//        if let q = self.GetQueue() {
//            q.async { [weak self] in
//                guard let self = self else { return }
//                self.Update(m_um)
//            }
//        }
        
        if self.inProcess == .foreground {
            if let q = self.GetQueue() {
                q.async { let _ = self.Update(m_um) }
                return nil
            }
        } else {
            return self.Update(m_um)
        }
        
        return nil
    }
    
    
    // MARK: - Update Function
    
    //var callbackObj: CallBackObject?
    
    private func Update(_ m_um: UpdateManager) -> Bool? {
        Logger.funcStart.notice("Update")

        m_um.InitializeSubModules()
        
        // Check
        let updateIsAllowed = m_um.UpdateIsAllowed()
        Logger.data.notice("UpdateIsAllowed overall-result: \(updateIsAllowed, privacy: .public)")
        
        // Call the Update. At the end, the CallBackObject calls aftermath!
        let callbackObj = CallBackObject(updater: self, updateManager: m_um, updateIsAllowed: updateIsAllowed)
        
        // IMPORTANT: Call the 'callbackObj'!
        if updateIsAllowed == .yes_allowed {
            self.PerformUpdate(callbackObj)
        } else {
            callbackObj.DoCallBack(updateResult: .undefined)
        }

        let result = (callbackObj.overallUpdateResult == .serverHasNoNewData || callbackObj.overallUpdateResult == .success) ? true : false
        return result
    }

    
    private func PerformUpdate(_ callBackObject: CallBackObject) {
        Logger.funcStart.notice("PerformUpdate")
        
        var result: Bool = false
        var resultForCallback: PerformedUpdateStatus = .undefined
        
        defer {
            callBackObject.DoCallBack(updateResult: resultForCallback)
        }
        
        // Get the new Dataset
        Logger.log.notice("*** Getting data from server.")
        let requestResult = GetCompleteSetFromServer.getDataAwait()
        
        let covidCaseS = requestResult.1
        result = requestResult.0
        Logger.data.notice("Result of GetCompleteSetFromServer: \(result, privacy: .public)")
        
        // Log some results.
        if result == true && covidCaseS.count == 0 {
            Logger.log.error("GetCompleteSetFromServer returned 0 cases.")
            resultForCallback = .serverHasNoNewData
        }
        
        if result == false {
            Logger.log.error("GetCompleteSetFromServer returned 'false'.")
            resultForCallback = .failed
        }
        
        // Insert new items into DB.
        if result == true && covidCaseS.count > 0 {
            Logger.log.notice("*** Inserting new Data into DB.")
            let timeStampExampleOfNewCases = covidCaseS[0].datetime1000
            result = self.insertItemsIntoSQLiteDB(covidCaseS, timeStampExampleOfNewCases)
            Logger.data.notice("Result of insertItemsIntoSQLiteDB: \(result, privacy: .public)")
            resultForCallback = ((result == true) ? .success : .failed)
        }
    }
    
    
    func insertItemsIntoSQLiteDB(_ covidCaseS: CovidCaseS, _ dateTimeServerResult: DTAI.DateTime1000) -> Bool {
        var result = false
        var glob_CloseResult = false
        var glob_OpenResult = false
        
        // Close Global DB
        let glob_SQLITEman = AppController.share.sqliteMan
        if glob_SQLITEman.dbIsOpen {
            glob_CloseResult = glob_SQLITEman.CloseDataBaseAwait()
            Logger.data.notice("Close of globDB returned: \(glob_CloseResult, privacy: .public)")
        }
        defer {
            if glob_CloseResult {
                glob_OpenResult = glob_SQLITEman.OpenDataBaseAwait()
                Logger.data.notice("Open of globDB returned: \(glob_OpenResult, privacy: .public)")
            }
        }
        
        // Open local SQLite Instance.
        let sQLiteMan = DBManager()
        if sQLiteMan.OpenDataBaseAwait() {
            Logger.data.notice("Local SQLite-Instance was opened.")
            
            // Insert the new Items
            sQLiteMan.InsertItemsAwait(items: covidCaseS)
            
            if sQLiteMan.CloseDataBaseAwait() {
                Logger.data.notice("Local SQLite-Instance was closed.")
            }
            
            // Check if the new TimeStamp in UserData is OK.
            let newTimeStampInLocalDB = self.GetLatestTimeStampOfLocalDatabase()
            if newTimeStampInLocalDB == dateTimeServerResult {
                Logger.log.notice("*** DB update successfully. ***")
                // UserStorageProvider.share.AppendItem("*** DB update successfully. ***")
                result = true
            } else {
                Logger.log.error("*** DB update was NOT successfully! ***")
                // UserStorageProvider.share.AppendItem("--- DB update was NOT successfully! ---")
            }
        }
        
        return result
    }
    
    
    func GetLatestTimeStampOfLocalDatabase() -> DTAI.DateTime1000 {
        var result = DTAI.DateTime1000()
        self.executeOnMain() { result = UserStorage.share.latestTimeStampAtLocalDB }
        return result
    }
    
    
    func executeOnMain(execute block: () -> Void) {
        if Thread.isMainThread {
            block()
        } else {
          DispatchQueue.main.sync {
            block()
          }
        }
    }
    
    var overallUpdateResult: PerformedUpdateStatus = .undefined
    
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
            
            self.overallUpdateResult = updateResult
            
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
    public var overallUpdateResult = PerformedUpdateStatus.undefined
    private init() { }
    
    
    init(updater: Updater, updateManager: UpdateManager, updateIsAllowed: IsUpdateAllowed) {
        self.updateManager = updateManager
        self.updateIsAllowed = updateIsAllowed
        self.updater = updater
    }
    
    func DoCallBack(updateResult: PerformedUpdateStatus) {
        Logger.funcStart.notice("DoCallBack")
        
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
        self.overallUpdateResult = updater.overallUpdateResult
        Logger.data.notice("overallUpdateResult : \(self.overallUpdateResult, privacy: .public)")
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
