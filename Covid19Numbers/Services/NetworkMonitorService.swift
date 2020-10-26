//
//  NetworkMonitorService.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 08.10.20.
//  Copyright © 2020 Dirk Scheidt. All rights reserved.
//
//  From Resource:  UdayKiran-M/NetworkMonitor.swift
//                  https://gist.github.com/UdayKiran-M/aeaee726832a005f0dc5bb4af5e9df18#file-networkmonitor-swift
//

import Foundation
import Network
import os.log

class NetworkMonitorService: NSObject {

    static let shared = NetworkMonitorService()
    
    override private init() { super.init() }
    
    public var isReachable: Bool { status == .satisfied }
    
    private var monitor = NWPathMonitor()
    private var status: NWPath.Status = .requiresConnection
    private var isReachableOnCellular: Bool = true
    private var isMonitorRunning: Bool = false
    private let queue = DispatchQueue(label: "NetworkMonitor")
    
    func startMonitoring() {
        if self.isMonitorRunning == true { return }
        monitor = NWPathMonitor()
        monitor.pathUpdateHandler = { [weak self] path in
            self?.status = path.status
            self?.isReachableOnCellular = path.isExpensive

            if path.status == .satisfied {
                // post connected notification
                Logger.log.notice("Network is present.")
            } else {
                // post disconnected notification
                Logger.log.notice("No network available.")
                Logger.log.notice("Network is expensive: \(path.isExpensive)")
            }
        }

        monitor.start(queue: queue)
        self.isMonitorRunning = true
    }

    func stopMonitoring() {
        if self.isMonitorRunning {
            monitor.cancel()
            self.isMonitorRunning = false
        }
    
    }
    deinit {
        let _ = self.stopMonitoring()
    }
}
