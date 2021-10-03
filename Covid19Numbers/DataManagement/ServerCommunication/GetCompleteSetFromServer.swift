//
//  GetCompleteSetFromServer.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 12.11.20.
//

import Foundation
import os.log


public final class GetCompleteSetFromServer: NSObject {
    override private init() {}
    
    public typealias returnTuple = (Bool, CovidCaseS)
    
    public static func getDataAwait() -> returnTuple {
        Logger.funcStart.notice("getDataAwait")
        
        let magicValueCounties: Int = 412   // This is the Maximum.
        let minimumGoodCounties: Int = 400  // Some tolerance.
        
        // Init empties
        var cases = CovidCaseS()
        var casesRecoveredData = GetCovidRecoveredDataFromServer.RecoveredCaseS()
        var casesNewData = GetCovidNewDataFromServer.NewCaseS()
        
        var result = true
        
        // Get the Data
        if result {
            let getBaseData = GetCovidBaseDataFromServer()
            let casesBaseData = getBaseData.getDataAwait()
            Logger.data.notice("Got base items. Count = \(casesBaseData.count, privacy: .public)")
            
            result = ((casesBaseData.count > 0) && (casesBaseData.count >= minimumGoodCounties) && (casesBaseData.count <= magicValueCounties))
            if result {
                cases = casesBaseData
            }
        }
        
        if result {
            let getRecoveredData = GetCovidRecoveredDataFromServer()
            casesRecoveredData = getRecoveredData.getDataAwait()
            Logger.data.notice("Got recovered items. Count = \(casesRecoveredData.count, privacy: .public)")
        }
        
        if result {
            let getNewData = GetCovidNewDataFromServer()
            casesNewData = getNewData.getDataAwait()
            Logger.data.notice("Got newcases items. Count = \(casesNewData.count, privacy: .public)")
        }
        
        // Merge the Data
        // Recovered and new
        if (cases.count > 0) {
            for index in (0...(cases.count - 1)) {
                if let recovered = casesRecoveredData[cases[index].idLandkreis] {
                    if recovered.datetime1000 == cases[index].datetime1000 {
                        cases[index].genesen = recovered.genesen
                    }
                }
                if let newcase = casesNewData[cases[index].idLandkreis] {
                    if newcase.datetime1000 == cases[index].datetime1000 {
                        cases[index].newCases = newcase.newCases
                        if cases[index].EWZ > 0 {
                            cases[index].newCases_per_100k = Double(newcase.newCases) / Double(cases[index].EWZ) * Double(100_000)
                        }
                    }
                }
            }
        } else {
            Logger.data.notice("Got no data.")
        }
        
        
        return (result, cases)
    }
}
