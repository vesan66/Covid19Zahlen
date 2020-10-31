//
//  UserStorage.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 09.10.20.
//  Copyright © 2020 Dirk Scheidt. All rights reserved.
//

import Foundation
import os.log

class UserStorage: NSObject {
    public static var share = UserStorage()
    
    struct BundleKeys {
        public static let BundleShortVersionString: String = "CFBundleShortVersionString"
        public static let BundleVersion: String = "CFBundleVersion"
    }
    
    private let lastManualUpdateTryKey = "lastManualUpdateTry" + appMode.asSuffix()
    private let latestTimeStampAtLocalDBKey = "latestTimeStampAtLocalDB" + appMode.asSuffix()
    private let manualUpdateDelayKey = "manualUpdateDelay" + appMode.asSuffix()
    private let isNotFirstStartKey = "isNotFirstStart" + appMode.asSuffix()
    private let onActivateUpdateDelayKey = "onActivateUpdateDelay" + appMode.asSuffix()
    private let lastOnActivateUpdateTryKey = "lastOnActivateUpdateTry" + appMode.asSuffix()
    private let userWantsResetKey = "userWantsReset" + appMode.asSuffix()
    private let applicationVersionKey = "UD_VERSION" + appMode.asSuffix()
    private let databaseIsNotEmptyKey = "databaseIsNotEmpty" + appMode.asSuffix()
    private let sortOrderKey = "sortOrder" + appMode.asSuffix()
    private let removeLastDownloadKey = "removeLastDownload" + appMode.asSuffix()
    
    
    private var onWantsResetFunc: () -> () = {
        () -> () in
        Logger.log.error("onWantsResetFunc not set.")
    }
    
    private var onRemoveLastDowloadFunc: () -> () = {
        () -> () in
        Logger.log.error("onRemoveLastDowloadFunc not set.")
    }
    
    override private init() {
        super.init()
        NotificationCenter.default.addObserver(self, selector: #selector(self.UpdateUserData), name: UserDefaults.didChangeNotification, object: nil)
    }
    
    @objc func UpdateUserData(_ notification: Notification) {
        let wantsReset = self.userWantsReset
        if wantsReset == true {
            Logger.log.notice("User initiated an app-reset.")
            DispatchQueue.main.async() {
                self.onWantsResetFunc()
            }
        }
        let removeLastDownalod = self.removeLastDownload
        if removeLastDownalod == true {
            Logger.log.notice("User initiated removeLastDownload.")
            DispatchQueue.main.async() {
                self.removeLastDownload = false
                self.onRemoveLastDowloadFunc()
            }
        }
    }
    
    public func onWantsReset(function: @escaping ()-> ()) {
        self.onWantsResetFunc = function
    }
    
    public func onRemoveLastDowload(function: @escaping ()-> ()) {
        self.onRemoveLastDowloadFunc = function
    }
    
    public var userWantsReset: Bool {
        get {
            return UserDefaults.standard.bool(forKey: userWantsResetKey)
        }
        set {
            UserDefaults.standard.set(Bool(newValue), forKey: userWantsResetKey)
        }
    }
    
    public var removeLastDownload: Bool {
        get {
            return UserDefaults.standard.bool(forKey: removeLastDownloadKey)
        }
        set {
            UserDefaults.standard.set(Bool(newValue), forKey: removeLastDownloadKey)
        }
    }
    
    func GetSetVersionAndBuild(){
        let versionNumber: String = Bundle.main.object(forInfoDictionaryKey: UserStorage.BundleKeys.BundleShortVersionString) as! String
        let buildNumber: String = Bundle.main.object(forInfoDictionaryKey: UserStorage.BundleKeys.BundleVersion) as! String
        let versionAndBuildNumber: String = "\(versionNumber) (\(buildNumber))"
        self.applicationVersion = versionAndBuildNumber
        UserDefaults.standard.synchronize()
    }
    
    public var databaseIsEmpty: Bool {
        get {
            return !UserDefaults.standard.bool(forKey: databaseIsNotEmptyKey)
        }
        set {
            UserDefaults.standard.set(Bool(!newValue), forKey: databaseIsNotEmptyKey)
        }
    }
    
    public var applicationVersion: String {
        get {
            return UserDefaults.standard.string(forKey: applicationVersionKey) ?? "Not set yet."
        }
        set {
            UserDefaults.standard.set(String(newValue), forKey: applicationVersionKey)
        }
    }
    
    public var lastManualUpdateTry: TimeInterval {
        get {
            return TimeInterval(UserDefaults.standard.double(forKey: lastManualUpdateTryKey))
        }
        set {
            Logger.data.notice("Setting lastManualUpdateTry to '\(Double(newValue), privacy: .public)', was '\(self.lastManualUpdateTry, privacy: .public)' before.")
            UserDefaults.standard.set(Double(newValue), forKey: lastManualUpdateTryKey)
        }
    }

    public var latestTimeStampAtLocalDB: Int64 {
        get {
            return Int64(UserDefaults.standard.integer(forKey: latestTimeStampAtLocalDBKey))
        }
        set {
            Logger.data.notice("Setting latestTimeStampAtLocalDB to '\(Double(newValue), privacy: .public)', was '\(self.latestTimeStampAtLocalDB, privacy: .public)' before.")
            UserDefaults.standard.set(Int64(newValue), forKey: latestTimeStampAtLocalDBKey)
        }
    }
    
    public var sortOrder: SortType {
        get {
            return SortType(rawValue: UserDefaults.standard.integer(forKey: sortOrderKey)) ?? SortType.alphabetic
        }
        set {
            UserDefaults.standard.set(Int(newValue.rawValue), forKey: sortOrderKey)
        }
    }
    
    public var manualUpdateDelay: TimeInterval {
        get {
            return TimeInterval(UserDefaults.standard.double(forKey: manualUpdateDelayKey))
        }
        set {
            UserDefaults.standard.set(Double(newValue), forKey: manualUpdateDelayKey)
        }
    }
    
    public var onActivateUpdateDelay: TimeInterval {
        get {
            return TimeInterval(UserDefaults.standard.double(forKey: onActivateUpdateDelayKey))
        }
        set {
            UserDefaults.standard.set(Double(newValue), forKey: onActivateUpdateDelayKey)
        }
    }
    
    public var lastOnActivateUpdateTry: TimeInterval {
        get {
            return TimeInterval(UserDefaults.standard.double(forKey: lastOnActivateUpdateTryKey))
        }
        set {
            Logger.data.notice("Setting lastOnActivateUpdateTry to '\(Double(newValue), privacy: .public)', was '\(self.lastOnActivateUpdateTry, privacy: .public)' before.")
            UserDefaults.standard.set(Double(newValue), forKey: lastOnActivateUpdateTryKey)
        }
    }
    
    public var isFirstStart: Bool {
        get {
            return !Bool(UserDefaults.standard.bool(forKey: isNotFirstStartKey))
        }
        set {
            UserDefaults.standard.set(Bool(!newValue), forKey: isNotFirstStartKey)
        }
    }
    
    public func ClearData() {
        let appDomain: String? = Bundle.main.bundleIdentifier
        UserDefaults.standard.removePersistentDomain(forName: appDomain!)
        self.userWantsReset = false
        self.lastManualUpdateTry = 0
        self.latestTimeStampAtLocalDB = 0
        self.manualUpdateDelay = AppDefaultConfiguration.timeForNextManualRetry
        self.lastOnActivateUpdateTry = 0
        self.onActivateUpdateDelay = AppDefaultConfiguration.timeForNextonActivateRefresh
        self.isFirstStart = false // Cause it's running now!
        self.databaseIsEmpty = true
        self.sortOrder = .alphabetic
        self.removeLastDownload = false
        UserDefaults.standard.synchronize()
    }
    
    public func CheckForFirstStartAndInitialize() {
        if self.isFirstStart == true {
            Logger.log.notice("This was the first start or reset of the app.")
            self.ClearData()
        }
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self, name: UserDefaults.didChangeNotification, object: nil)
    }
}
