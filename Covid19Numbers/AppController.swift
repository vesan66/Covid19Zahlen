//
//  AppController.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 09.10.20.
//  Copyright © 2020 Dirk Scheidt. All rights reserved.
//

import Foundation
import os.log
import Combine
import UIKit

public protocol AppControllerFunctions {
    func Start()
    func ChangeSortOrder(sortOrder: SortType)
    func WantUpdateFrom_UserRefresh()
    func GetObservedProperties() -> ObservedProperties
    func GetObservedPropertiesSummary() -> ObservedProperties
    func StoreFavorites(favoritesStored: @escaping(Bool)->())
    func DelteAndRemoveAFavorite(idLandkreis: String)
    func CalculateSummaryData()
    func GetDataForOneCounty(idLandkreis: String)
}


public final class AppController: NSObject, AppControllerFunctions {
    public static let share = AppController()
    public static let appFunctions: AppControllerFunctions = share
    
    private let obProps = ObservedProperties()
    private let obPropsSumm = ObservedProperties()
    
    public func GetObservedProperties() -> ObservedProperties {
        return obProps
    }
    
    public func GetObservedPropertiesSummary() -> ObservedProperties {
        return obPropsSumm
    }
    
    private(set) var sqliteMan = DBManager()
    
    public let updateSerialQueue = DispatchQueue(label: "updateQueue", qos: .background)
    
    private var isAppLaunch = false
    private var isInitialDisplayAfterAppLaunch = false
    private var cancellableNewDataArrived: AnyCancellable?
    private var cancellableAppStatusChanged: AnyCancellable?
    private let updater = Updater()
    private var infoFrameDisplay: Timer?
    
    private var backgroundTaskID: UIBackgroundTaskIdentifier?
    
    override private init() {
        super.init()
    }
    
    
    public func Start() {
        Logger.funcStart.notice("AppController.Start")
        self.isAppLaunch = true
        self.isInitialDisplayAfterAppLaunch = true
        self.obProps.appStatus = .Startup
        
        // Userdata
        self.start_UserData()
        
        // Transfer Some Data from UserDatat to obsProps
        self.obProps.latestTimeStampOfDB = UserStorage.share.latestTimeStampAtLocalDB
        self.obProps.currentSort = UserStorage.share.sortOrder
        
        // Start check for internet-service
        NetworkMonitorService.shared.startMonitoring()
        
        // Create and Open the Database
        self.start_Database()
        
        // Prepare Class for Server Calls, if needed.
        // Nothing to do.
        
        //Setup watches
        self.cancellableNewDataArrived = obProps.$newDataArrived.sink(receiveValue: { [weak self] newDataArrived in
            guard let self = self else { return }
            self.newDataArrivedWatch(newDataArrived: newDataArrived)
        })
        
        self.cancellableAppStatusChanged = obProps.$appStatus.sink(receiveValue: { [weak self] appStatus in
            guard let self = self else { return }
            self.appStatusChanged(newAppStatus: appStatus)
        })
        
        #if DEBUG
            if deleteOnEveryStartup == true {
                ResetApplication()
            }
        #endif

        // Setup Background Fetch System
        self.initializeBackGroundTaskManagement()
        
        // Do a Applaunch Fetch.
        if UserStorage.share.databaseIsEmpty == true {
            self.wantUpdateFrom_Initial()
        } else {
            self.wantUpdateFrom_AppLaunch()
        }
    }
    
    
    private func newDataArrivedWatch(newDataArrived: Bool) {
        Logger.funcStart.notice("newDataArrivedWatch: \(newDataArrived.description, privacy: .public)")
        if newDataArrived == true {
            Logger.log.notice("New data here. Going to display.")
            // Do Display
            self.GetAndDisplayData()
            return
        }
        if self.isInitialDisplayAfterAppLaunch == true {
            Logger.log.notice("First time display after app launch.")
            self.isInitialDisplayAfterAppLaunch = false
            self.GetAndDisplayData()
            return
        }
    }
    
    
    private func appStatusChanged(newAppStatus: AppStatusEnum) {
        Logger.funcStart.notice("appStatusChanged: \(newAppStatus.description, privacy: .public)")
        if newAppStatus.notifyUser == true {
            self.obProps.displayInfoFrame = true
            self.infoFrameDisplay?.invalidate()
            Logger.log.notice("Setting timer for hide to '\(AppDefaultConfiguration.displayInfoForSeconds, privacy: .public)'.")
            self.infoFrameDisplay = Timer.scheduledTimer(timeInterval: AppDefaultConfiguration.displayInfoForSeconds, target: self, selector: #selector(hideInfoFrame), userInfo: nil, repeats: false)
        }
    }
    
    
    @objc private func hideInfoFrame() {
        Logger.funcStart.notice("hideInfoFrame")
        self.obProps.displayInfoFrame = false
        self.infoFrameDisplay?.invalidate()
    }
    
    
    public func StoreFavorites(favoritesStored: @escaping(Bool)->()){
        if self.sqliteMan.dbIsOpen {
            self.sqliteMan.StoreFavoritesAsyncCallBack(counties: self.obProps.dataForDisplay.cases) {[weak self] fs in
                guard let self = self else { return }
                self.obProps.dataForDisplay.casesFavorites = [CovidCasesPerObjectIDP]()
                DispatchQueue.global(qos: .background).async {
                    for item in self.obProps.dataForDisplay.cases {
                        if item.IsFavorite == true {
                            self.obProps.dataForDisplay.casesFavorites.append(item)
                        }
                    }
                    DispatchQueue.main.async() {
                        self.obProps.objectWillChange.send()
                        favoritesStored(fs)
                    }
                }
            }
        }
    }
    
    
    public func CalculateSummaryData() {
        Logger.funcStart.notice("CalculateSummaryData")
        self.sqliteMan.GetAllDaysOfCovidCasesForDisplayAsync(orderBy: UserStorage.share.sortOrder, loadedData: {
            [weak self] dataForDisplay in
            guard let self = self else { return }
            DispatchQueue.main.async{
                self.obProps.summarySheetData = dataForDisplay
                Logger.data.notice("self.obProps.summarySheetData.cases.count = \(dataForDisplay.cases.count, privacy: .public)")
            }
        })
    }
    
    
    public func GetDataForOneCounty(idLandkreis: String) {
        Logger.funcStart.notice("GetDataForOneCounty: \(idLandkreis, privacy: .public)")
        if idLandkreis.isEmpty == true {
            Logger.log.notice("IdLandkreis is Empty. Return")
            return
        }
        
        self.obPropsSumm.dataOfOneCounty = CovidCasesPerObjectIDP()
        
        self.sqliteMan.GetAllDaysOfOneCountyForDisplayAsync(idLandkreis: idLandkreis, orderBy: UserStorage.share.sortOrder, loadedData: {
            [weak self] dataForDisplay in
            guard let self = self else { return }
            DispatchQueue.main.async{
                if dataForDisplay.cases.count == 1 {
                    let item = dataForDisplay.cases[0]
                    self.obPropsSumm.dataOfOneCounty = item
                    Logger.data.notice("self.obProps.dataOfOneCounty.casees.count = \(item.cases.count, privacy: .public)")
                } else {
                    Logger.data.error("No or more then on return item.")
                }
            }
        })
    }
    
    
    private func GetAndDisplayData() {
        Logger.funcStart.notice("*** GetAndDisplayData ***")
        self.obProps.loadingDataFromDB = true
        self.sqliteMan.GetLastTwoDaysOfCovidCasesForDisplayAsync(orderBy: UserStorage.share.sortOrder, loadedData: {
            [weak self] dataForDisplay in
            guard let self = self else { return }
            DispatchQueue.main.async{
                Logger.data.notice("self.obProps.dataForDisplay.case.count = \(dataForDisplay.cases.count, privacy: .public)")
                Logger.data.notice("self.obProps.dataForDisplay.casesFavorites.count = \(dataForDisplay.casesFavorites.count, privacy: .public)")
                self.obProps.loadingDataFromDB = false
                self.obProps.dataForDisplay = dataForDisplay
                self.obProps.latestTimeStampOfDB = UserStorage.share.latestTimeStampAtLocalDB
            }
        })
    }
    
    
    public func ChangeSortOrder(sortOrder: SortType) {
        Logger.funcStart.notice("ChangeSortOrder")
        if ( sortOrder == UserStorage.share.sortOrder) {
            Logger.log.notice("Sortorder unchanged.")
            return
        }
        UserStorage.share.sortOrder = sortOrder
        self.obProps.currentSort = sortOrder
        self.GetAndDisplayData()
    }
    
    
    public func DelteAndRemoveAFavorite(idLandkreis: String) {
        Logger.funcStart.notice("DelteAndRemoveAFavorite: \(idLandkreis, privacy: .public)")
        if idLandkreis.isEmpty {
            Logger.log.notice("IdLandkreis is empty.")
            return
        }
        if self.sqliteMan.DeleteFavoriteAwait(idLandkreis: idLandkreis) {
            if let idx = self.obProps.dataForDisplay.casesFavorites.firstIndex(where: { $0.idLandkreis == idLandkreis }) {
                self.obProps.dataForDisplay.casesFavorites.remove(at: idx)
                if let item = self.obProps.dataForDisplay.cases.first(where: { $0.idLandkreis == idLandkreis }) {
                    item.IsFavorite = false
                    item.objectWillChange.send()
                }
            }
        }
    }
    
    private func SetAppStatusToCheckGet() {
        Logger.funcStart.notice("SetAppStatusToCheckGet")
        DispatchQueue.main.async() {
            self.obProps.appStatus = .CheckingGettingNewData
        }
    }
    
    
    public func WantUpdateFrom_UserRefresh() {
        Logger.funcStart.notice("WantUpdateFrom_UserRefresh")
        self.wantUpdateAsync(.manual)
    }
    
    private func wantUpdateFrom_AppAwake() {
        Logger.funcStart.notice("wantUpdateFrom_AppAwake")
        self.wantUpdateAsync(.onActivateApp)
    }
    
    private func wantUpdateFrom_AppLaunch() {
        Logger.funcStart.notice("wantUpdateFrom_AppLaunch")
        self.wantUpdateAsync(.onActivateApp)
    }
    
    private func wantUpdateFrom_Initial() {
        Logger.funcStart.notice("wantUpdateFrom_Initial")
        self.wantUpdateAsync(.initial)
    }
    
    private func wantUpdateFrom_BackgroundTask() -> Bool {
        Logger.funcStart.notice("wantUpdateFrom_BackgroundTask")
        self.wantUpdateAsync(.backgroundTask)
        return true
    }
    
    private func wantUpdateAsync(_ updateKind: UpdateKind) {
        Logger.funcStart.notice("wantUpdateAsync: \(updateKind.rawValue, privacy: .public)")
    
        if self.sqliteMan.dbIsOpen == false {
            Logger.log.error("However: Database is not ready. Senseless to fetch new data.")
            return
        }
        
        // Go into Update-Process
        updateSerialQueue.async { [weak self] in
            guard let self = self else { return }
            switch updateKind {
                case .backgroundTask:
                    self.updater.onBackgroundUpdate()
                case .initial:
                    // Display the action
                    self.SetAppStatusToCheckGet()
                    self.updater.onInitialUpdate()
                case .manual:
                    // Display the action
                    self.SetAppStatusToCheckGet()
                    self.updater.ManualUpdate()
                case .onActivateApp:
                    self.updater.onReactivateAppUpdate()
            }
        }
        
    }

    private func willEnterForegroundMain() {
        Logger.funcStart.notice("willEnterForegroundMain")
        self.hideInfoFrame()
        self.updater.resetInBackgroundUpdate()
        if self.isAppLaunch == true {
            self.isAppLaunch = false
            // Don't call it from here: Wasting time, to wait for display. Maybe we can do its before.
            //self.wantUpdateFrom_AppLaunch()
        } else {
            self.wantUpdateFrom_AppAwake()
        }
    }
    
    
    private func ResetApplication() {
        Logger.funcStart.notice("ResetApplication")
        self.hideInfoFrame()
        // 1. Reset USerStorage
        UserStorage.share.ClearData()
        // 2. Wipe Database
        self.WipeDataBase()
    }
    
    
    private func start_Database() {
        // Create and Open the Database
        let _ = self.sqliteMan.OpenDataBaseAwait()
        if self.sqliteMan.dbIsOpen == false {
            Logger.log.error("Failed to open Database.")
            self.obProps.appStatus = .DatabaseError
            return // Don't know, what to do with this situation.
        }
        // Set a Flag, for present Data. If not, an immediate load is possible.
        if let dbIsEmpty = self.sqliteMan.DataBaseIsEmptyAwait() {
            UserStorage.share.databaseIsEmpty = dbIsEmpty
        } else {
            Logger.log.error("Error on Empty-DB-Check.")
            self.obProps.appStatus = .DatabaseError
            return // Don't know, what to do with this situation.
        }
    }
    
    private func start_UserData() {
        UserStorage.share.CheckForFirstStartAndInitialize()
        UserStorage.share.GetSetVersionAndBuild()
        UserStorage.share.onWantsReset(function: self.ResetApplication)
    }
    
    private func WipeDataBase() {
        self.sqliteMan.WipeDatabase()
        self.sqliteMan = DBManager()
        self.start_Database()
    }
    
    
    private func doCleanUps() {
        // Perform the task on a background queue.
        DispatchQueue.global().async {
            // Request the task assertion and save the ID.
            self.backgroundTaskID = UIApplication.shared.beginBackgroundTask (withName: "finish_task") {
                // End the task if time expires.
                Logger.log.notice("Backgroundtime expired.")
                if self.updater.inForegroundUpdate == true {
                    Logger.log.error("(2) There was a pending foreground activity: Resetting.")
                }
                self.updater.resetInForegroundUpdate()
                UIApplication.shared.endBackgroundTask(self.backgroundTaskID!)
                self.backgroundTaskID = UIBackgroundTaskIdentifier.invalid
            }

            // Do some stuff.
            Logger.log.notice("Left over foreground.")
            DispatchQueue.main.asyncAfter(deadline: .now() + 60) {
                Logger.log.notice("Checking for pending ForeGroundFlag")
                if self.updater.inForegroundUpdate == true {
                    Logger.log.error("(1) There was a pending foreground activity: Resetting.")
                    self.updater.resetInForegroundUpdate()
                }
            }
            
            // End the task assertion.
            UIApplication.shared.endBackgroundTask(self.backgroundTaskID!)
            self.backgroundTaskID = UIBackgroundTaskIdentifier.invalid
       }
    }
    
    
    deinit {
        NetworkMonitorService.shared.stopMonitoring()
    }
}


// MARK: - Background Handler
extension AppController {
    
    private func initializeBackGroundTaskManagement() {
        
        BackGroundTaskController.shared.RegisterBackgroundTask()
        
        BackGroundTaskController.shared.SetEstimationFunction(function: { [weak self] in
            guard let self = self else { return Estimation(false) }
            return self.EstimateNextExecutionTime()
        })
        
        BackGroundTaskController.shared.SetWorkloadFunction(function: { [weak self] in
            guard let self = self else { return true }
            return self.GetDataFromServerByBackgroundTask()
        })
    }
    
    public func willEnterForeground() {
        Logger.funcStart.notice("*** Entering Foreground ***")
        BackGroundTaskController.shared.CancelAllTaskRequests()
        self.willEnterForegroundMain()
    }
    
    public func didEnterBackground() {
        Logger.funcStart.notice("*** Entering Background ***")
        BackGroundTaskController.shared.EnqueueNewBackgroundTask()
        self.doCleanUps()
    }
    
    private func EstimateNextExecutionTime() -> Estimation {
        return Estimation(true, Date(timeIntervalSinceNow: AppDefaultConfiguration.timeSpanUntilNextBackgroundFetch))
    }
    
    private func GetDataFromServerByBackgroundTask() -> Bool {
        return self.wantUpdateFrom_BackgroundTask()
    }

}
