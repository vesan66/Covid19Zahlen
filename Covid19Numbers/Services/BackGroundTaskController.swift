//
//  BackGroundTaskController.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 08.10.20.
//  Copyright © 2020 Dirk Scheidt. All rights reserved.
//

import Foundation
import BackgroundTasks
import os.log

struct Estimation {
    var execute: Bool
    var atDateTime: Date?
    
    init(_ execute: Bool, _ atDateTime: Date? = nil) {
        self.execute = execute
        self.atDateTime = atDateTime
    }
}

class BackGroundTaskController: NSObject {
    static public let shared = BackGroundTaskController()
    private override init()  { super.init() }
    
    private var EstimationFunction: ()-> Estimation = {
        () -> Estimation in
        Logger.log.error("EstimationFunction not set.")
        return Estimation(false)
    }
    
    private var WorkloadFunction: ()-> Bool = {
        () -> Bool in
        return true
    }

    private let identifierProcess: String = AppDefaultConfiguration.backgroundTaskIdentifierProcess
    private let identifierRefresh: String = AppDefaultConfiguration.backgroundTaskIdentifierRefresh
    
    //MARK: e -l objc -- (void)[[BGTaskScheduler sharedScheduler] _simulateLaunchForTaskWithIdentifier:@"com.DirkScheidt.BackgroundTaskExample.refresh"]
    
    public func EnqueueNewBackgroundTask() {
        Logger.funcStart.notice("EnqueueNewBackgroundTask")
        self.CancelAllTaskRequests()
        self.EnqueueNewWorkingTask()
    }
    
    public func RegisterBackgroundTask() {
        Logger.funcStart.notice("RegisterBackgroundTask")
        BGTaskScheduler.shared.register(forTaskWithIdentifier: identifierProcess, using: nil) { task in
              self.WorkingTask(task: task as! BGProcessingTask)
        }
    }

    public func CancelAllTaskRequests() {
        BGTaskScheduler.shared.cancelAllTaskRequests()
    }
    
    public func SetEstimationFunction(function: @escaping ()-> Estimation) {
        self.EstimationFunction = function
    }
    
    public func SetWorkloadFunction(function: @escaping ()-> Bool) {
        self.WorkloadFunction = function
    }
    
    private func EnqueueNewWorkingTask() {
        Logger.funcStart.notice("EnqueueNewWorkingTask")

        let estimationResult = self.EstimationFunction()
        
        if estimationResult.execute == false {
            Logger.log.notice("No new WorkingTask to set.")
            return
        }
        
        guard let execDateTime = estimationResult.atDateTime else {
            Logger.log.error("estimationResult.atDateTime was not set.")
            return
        }
        
        let request = BGProcessingTaskRequest(identifier: identifierProcess)

        request.requiresNetworkConnectivity = true
        request.requiresExternalPower = false

        // Apple said EarliestBeginDate should not be set to too far into the future.
        Logger.log.notice("Next execution dateTime: \(execDateTime, privacy: .public)")
        request.earliestBeginDate = execDateTime

        do {
            try BGTaskScheduler.shared.submit(request)
        } catch {
            Logger.log.critical("Could not schedule NewWorkingTask: \(error.localizedDescription, privacy: .public)")
        }
    }
    
    private func WorkingTask(task: BGProcessingTask) {
        Logger.funcStart.notice("WorkingTask")
        self.EnqueueNewWorkingTask()

        task.expirationHandler = {
            self.CancelAllTaskRequests()
        }

        let result = WorkLoad()

        task.setTaskCompleted(success: result)

    }

    private func WorkLoad() -> Bool {
        Logger.funcStart.notice("WorkLoad")
        
        let result = WorkloadFunction()
        Logger.log.notice("Result of WorkloadFunction was: \(result, privacy: .public)")
        
        return result
    }

    public func RegisterBackgroundRefreshTask() {
        Logger.funcStart.notice("RegisterBackgroundRefreshTask")
        BGTaskScheduler.shared.register(forTaskWithIdentifier: identifierRefresh, using: nil) { task in
              self.WorkingTaskRefresh(task: task as! BGAppRefreshTask)
            }
    }

    private func WorkingTaskRefresh(task: BGAppRefreshTask) {
        Logger.funcStart.notice("WorkingTask Refresh")
        self.EnqueueNewWorkingTask()

        task.expirationHandler = {
            self.CancelAllTaskRequests()
        }

        let result = WorkLoadRefresh()

        task.setTaskCompleted(success: result)

    }

    private func WorkLoadRefresh() -> Bool {
        Logger.funcStart.notice("WorkLoadRefresh")
        
        let result = WorkloadFunction()
        Logger.log.notice("Result of WorkloadFunction was: \(result, privacy: .public)")
        
        return result
    }
    
    private func EnqueueNewWorkingTaskRefresh() {
        Logger.funcStart.notice("EnqueueNewWorkingTaskRefresh")

        // TODO: Condition Test!
        // TODO: Next Execution Time!

        let request = BGAppRefreshTaskRequest(identifier: identifierRefresh)

        // Mark: Apple said EarliestBeginDate should not be set to too far into the future.
        request.earliestBeginDate = Date(timeIntervalSinceNow: 1 * 60) // -> 1 Minute

        do {
            try BGTaskScheduler.shared.submit(request)
        } catch {
            Logger.log.critical("Could not schedule NewWorkingTask: \(error.localizedDescription, privacy: .public)")
        }
    }
}
