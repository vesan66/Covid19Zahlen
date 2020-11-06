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
    // TODO: Refactoring: Share codebase. To much boilerplate.
    
    static public let shared = BackGroundTaskController()
    private override init()  { super.init() }

    
    public func CancelAllTaskRequests() {
        BGTaskScheduler.shared.cancelAllTaskRequests()
    }
    
    
//    // MARK: --  BGProcessingTask --
//    private let identifierProcessingTask: String    = AppDefaultConfiguration.backgroundTaskIdentifierProcess
//
//
//    private var EstimationProcessingTaskFunction: ()-> Estimation = {
//        () -> Estimation in
//        Logger.log.error("EstimationProcessingTaskFunction not set.")
//        return Estimation(false)
//    }
//
//
//    private var WorkloadProcessingTaskFunction: ()-> Bool = {
//        () -> Bool in
//        return true
//    }
//
//
//    public func SetEstimationProcessingTaskFunction(function: @escaping ()-> Estimation) {
//        self.EstimationProcessingTaskFunction = function
//    }
//
//
//    public func SetWorkloadProcessingTaskFunction(function: @escaping ()-> Bool) {
//        self.WorkloadProcessingTaskFunction = function
//    }
//
//
//    public func RegisterBackgroundProcessingTask() {
//        Logger.funcStart.notice("RegisterBackgroundProcessingTask")
//        BGTaskScheduler.shared.register(forTaskWithIdentifier: identifierProcessingTask, using: nil) { task in
//              self.WorkingProcessingTask(task: task as! BGProcessingTask)
//        }
//    }
//
//
//    public func EnqueueNewBackgroundProcessingTask() {
//        // e -l objc -- (void)[[BGTaskScheduler sharedScheduler] _simulateLaunchForTaskWithIdentifier:@"com.Covid19Numbers.process"]
//        Logger.funcStart.notice("EnqueueNewBackgroundProcessingTask")
//        self.CancelAllTaskRequests()
//        self.EnqueueNewWorkingProcessingTask()
//    }
//
//
//    private func EnqueueNewWorkingProcessingTask() {
//        Logger.funcStart.notice("EnqueueNewWorkingProcessingTask")
//
//        let estimationResult = self.EstimationProcessingTaskFunction()
//
//        if estimationResult.execute == false {
//            Logger.log.notice("No new ProcessingTask to set.")
//            return
//        }
//
//        guard let execDateTime = estimationResult.atDateTime else {
//            Logger.log.error("estimationResult.atDateTime was not set.")
//            return
//        }
//
//        let request = BGProcessingTaskRequest(identifier: identifierProcessingTask)
//
//        request.requiresNetworkConnectivity = true
//        request.requiresExternalPower = false
//
//        // Apple said EarliestBeginDate should not be set to too far into the future.
//        Logger.log.notice("Next execution at: \(execDateTime, privacy: .public)")
//        request.earliestBeginDate = execDateTime
//
//        do {
//            try BGTaskScheduler.shared.submit(request)
//        } catch {
//            Logger.log.critical("Could not schedule new ProcessingTask: \(error.localizedDescription, privacy: .public)")
//        }
//    }
//
//
//    private func WorkingProcessingTask(task: BGProcessingTask) {
//        Logger.funcStart.notice("WorkingProcessingTask")
//        self.EnqueueNewWorkingProcessingTask()
//
//        task.expirationHandler = {
//            self.CancelAllTaskRequests()
//        }
//        DispatchQueue.main.async() {
//            let result = self.WorkLoadProcessingTask()
//            task.setTaskCompleted(success: result)
//        }
//    }
//
//
//    private func WorkLoadProcessingTask() -> Bool {
//        Logger.funcStart.notice("WorkLoadProcessingTask")
//
//        let result = WorkloadProcessingTaskFunction()
//        Logger.log.notice("Result of WorkloadProcessingTaskFunction was: \(result, privacy: .public)")
//
//        return result
//    }


    
    // MARK: --  BGAppRefreshTask --
    private let identifierRefreshTask: String       = AppDefaultConfiguration.backgroundTaskIdentifierRefresh
    
    
    private var EstimationRefreshTaskFunction: ()-> Estimation = {
        () -> Estimation in
        Logger.log.error("EstimationRefreshTaskFunction not set.")
        return Estimation(false)
    }
    
    
    private var WorkloadRefreshTaskFunction: ()-> Bool = {
        () -> Bool in
        return true
    }
    
    
    public func SetEstimationRefreshTaskFunction(function: @escaping ()-> Estimation) {
        self.EstimationRefreshTaskFunction = function
    }
    
    
    public func SetWorkloadRefreshTaskFunction(function: @escaping ()-> Bool) {
        self.WorkloadRefreshTaskFunction = function
    }
    
    
    public func RegisterBackgroundRefreshTask() {
        Logger.funcStart.notice("RegisterBackgroundRefreshTask")
        BGTaskScheduler.shared.register(forTaskWithIdentifier: identifierRefreshTask, using: nil) { task in
              self.WorkingRefreshTask(task: task as! BGAppRefreshTask)
            }
    }
    
    
    public func EnqueueNewBackgroundRefreshTask() {
        // e -l objc -- (void)[[BGTaskScheduler sharedScheduler] _simulateLaunchForTaskWithIdentifier:@"com.Covid19Numbers.refresh"]
        Logger.funcStart.notice("EnqueueNewBackgroundRefreshTask")
        self.CancelAllTaskRequests()
        self.EnqueueNewWorkingRefreshTask()
    }


    private func EnqueueNewWorkingRefreshTask() {
        Logger.funcStart.notice("EnqueueNewWorkingRefreshTask")

        let estimationResult = self.EstimationRefreshTaskFunction()

        if estimationResult.execute == false {
            Logger.log.notice("No new RefreshTask to set.")
            return
        }

        guard let execDateTime = estimationResult.atDateTime else {
            Logger.log.error("estimationResult.atDateTime was not set.")
            return
        }

        // Apple said EarliestBeginDate should not be set to too far into the future.
        Logger.log.notice("Next execution at: \(execDateTime, privacy: .public)")

        let request = BGAppRefreshTaskRequest(identifier: identifierRefreshTask)
        request.earliestBeginDate = execDateTime

        do {
            try BGTaskScheduler.shared.submit(request)
        } catch {
            Logger.log.critical("Could not schedule new RefreshTask: \(error.localizedDescription, privacy: .public)")
        }
    }
    
    
    private func WorkingRefreshTask(task: BGAppRefreshTask) {
        Logger.funcStart.notice("WorkingRefreshTask")
        self.EnqueueNewWorkingRefreshTask()

        task.expirationHandler = {
            self.CancelAllTaskRequests()
        }
        DispatchQueue.main.async() {
            let result = self.WorkLoadRefreshTask()
            task.setTaskCompleted(success: result)
        }
    }
    
    
    private func WorkLoadRefreshTask() -> Bool {
        Logger.funcStart.notice("WorkLoadRefreshTask")

        let result = WorkloadRefreshTaskFunction()
        Logger.data.notice("Result of WorkloadRefreshTaskFunction was: \(result, privacy: .public)")

        return result
    }
}
