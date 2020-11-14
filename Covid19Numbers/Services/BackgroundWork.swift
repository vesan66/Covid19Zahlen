//
//  BackgroundWork.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 11.11.20.
//

import Foundation
import os.log

class BackgroundWork: NSObject {
    
    
    func EstimateNextExecutionTime() -> Estimation {
        return Estimation(true, Date(timeIntervalSinceNow: AppDefaultConfiguration.timeSpanUntilNextBackgroundFetch))
    }

    
    func wantUpdateFrom_BackgroundTask() -> Bool {
        Logger.funcStart.notice("wantUpdateFrom_BackgroundTask")
        var result = true
        var doUpdate = false
        var dateTimeServerResult = DTAI.DateTime1000()
        var dateTimeLocalResult = DTAI.DateTime1000()
        var covidCaseS = CovidCaseS()
        
        // Do the for DateTime
        if result {
            Logger.log.notice("*** Getting actual Timestamp from server.")
            let getTimeStamp = GetActualTimeStampFromServer()
            dateTimeServerResult = getTimeStamp.getDataAwait()
            Logger.data.notice("Got a timestamp: \(dateTimeServerResult, privacy: .public)")
            result = dateTimeServerResult != 0 ? true : false
        }
        
        // Get local TimeStamp at DB
        if result {
            dateTimeLocalResult = self.GetLatestTimeStampOfLocalDatabase()
        }
        
        // Check here against present data in DB.
        if result {
            if dateTimeLocalResult == 0 || dateTimeLocalResult < dateTimeServerResult {
                doUpdate = true
                Logger.data.notice("Check for new Data needed: \(doUpdate, privacy: .public)")
                // UserStorageProvider.share.AppendItem("Check for new Data needed: \(doUpdate)")
            }
        }
        
        // Get the new Dataset
        if result && doUpdate {
            Logger.log.notice("*** Getting data from server.")
            let requestResult = GetCompleteSetFromServer.getDataAwait()
            
            covidCaseS = requestResult.1
            result = requestResult.0
            
            Logger.data.notice("Result of GetCompleteSetFromServer: \(result, privacy: .public)")
        }
        
        // Insert new items into DB.
        if result && doUpdate {
            Logger.log.notice("*** Inserting new Data into DB.")
            result = self.insertItemsIntoSQLiteDB(covidCaseS, dateTimeServerResult)
            Logger.data.notice("Result of insertItemsIntoSQLiteDB: \(result, privacy: .public)")
        }
        
        if result && doUpdate {
            // There are new Data for display
            let obProps  = AppController.appFunctions.GetObservedProperties()
            let interCom = AppController.appFunctions.GetInterCom()
            self.executeOnMain {
                obProps.appStatus = .NewDataForDisplay
                interCom.SetNewDataInLocalDB()
            }
        }
        return result
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
}
