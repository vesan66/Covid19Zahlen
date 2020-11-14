//
//  UserStorageProvider.swift
//  ASecondBackgroundTest
//
//  Created by Dirk Scheidt on 01.11.20.
//

import Foundation
import UIKit
import os.log

class UserStorageProvider: ObservableObject {
    
    public typealias ItemKey = String
    public typealias Item = String
    public typealias ItemS = Dictionary<ItemKey, Item>
    public typealias Keys = [ItemKey]
    public typealias Tuple = (ItemKey, Item)
    
    private enum AppStates: String {
        case background = "B"
        case inactive = "I"
        case active = "A"
        case undefined  = "U"
    }
    
    public static let share = UserStorageProvider()
    
    @Published
    public var items: ItemS = ItemS()
    private var iAmWriting: Bool = false
    
    private let userDataMonKey: String = AppDefaultConfiguration.userDataMonitorKey
    
    private let userGroupStorage = UserDefaults.init(suiteName: AppDefaultConfiguration.containerSharedGroup)
    
    
    private init() {
        self.ReloadList()
    }
    
    
    public func ReloadList() {
        self.items = GetTheArray()
    }

    
    public func DeleteList() {
        self.items = ItemS()
        self.SetTheArray(LogItems: items)
    }
    
    
    public func GetDisplayStringByKey(_ key: String) -> Tuple {
        if let ti: TimeInterval = Double(key) {
            if let item = self.items[key] {
                return (self.timeIntervalToString(timeInterval: ti), item)
            }
        }
        return ("", "")
    }
    
    
    public func removeItemByKey(_ key: ItemKey) {
        if key.isEmpty == false {
            self.ReloadList()
            self.items.removeValue(forKey: key)
            SetTheArray(LogItems: self.items)
        }
    }
    
    
    public func AppendItem(_ text: String) {
        let key = ItemKey(Date().timeIntervalSince1970)
        let item = formatItemForInput(text)
        self.ReloadList()
        self.items[key] = item
        SetTheArray(LogItems: self.items)
    }
    

    private func SetTheArray(LogItems array: ItemS){
        if let defaults = userGroupStorage {
            iAmWriting = true
            defaults.set(array, forKey: userDataMonKey)
            defaults.synchronize()
            iAmWriting = false
        }
    }
    
    
    private func GetTheArray() -> ItemS {
        if let defaults = userGroupStorage {
            let theArray = (defaults.dictionary(forKey: userDataMonKey))
            guard let dict = theArray as? ItemS else {
                return ItemS()
            }
            return dict
        } else {
            return ItemS()
        }
    }
    
    
    private func formatItemForInput(_ text: String) -> Item {
        let appState = self.GetAppstate().rawValue
        return appState + (text.isEmpty ? "" : ": ") + text
    }

    
    public func timeIntervalToString(timeInterval: TimeInterval) -> String {
        let formattedString = iso8601withFractionalSeconds.string(for: Date(timeIntervalSince1970: timeInterval))
        return formattedString ?? ""
    }

    
    public func getSortedKeys() -> Keys {
        let sortedKeys = self.items.keys.sorted(by: { (firstKey, secondKey) -> Bool in
                                                    let f = Double(firstKey) ?? 0
                                                    let s = Double(secondKey) ?? 0
                                                    return f > s }  )
        return sortedKeys
    }
    
    
    let iso8601withFractionalSeconds: DateFormatter = {
        let formatter = DateFormatter()
        formatter.locale = Locale.current
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSXXXXX"
        return formatter
    }()
    
    
    private func GetAppstate() -> AppStates {
        var state: UIApplication.State?

        self.executeOnMain() {
            state = UIApplication.shared.applicationState
        }
        
        switch state {
            case .background:
                return .background
            case .inactive:
                return .inactive
            case .active:
                return .active
            default:
                return.undefined
        }
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
    
    
    public func EnableNotifications() {
        NotificationCenter.default.addObserver(self, selector: #selector(self.UpdateUserData), name: UserDefaults.didChangeNotification, object: nil)

    }
    
    
    @objc func UpdateUserData(_ notification: Notification) {
        DispatchQueue.main.async() {
            if self.iAmWriting == false {
                self.ReloadList()
            }
        }
    }
    
    
    deinit {
        NotificationCenter.default.removeObserver(self, name: UserDefaults.didChangeNotification, object: nil)
        self.SetTheArray(LogItems: self.items)
    }
}
