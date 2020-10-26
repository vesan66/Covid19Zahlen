//
//  Databaseprocessor.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 09.10.20.
//  Copyright © 2020 Dirk Scheidt. All rights reserved.
//

import Foundation

protocol DataBaseProcessor: NSObject {
    func ProcessIncomingCases(_ covidCases: [CovidCase])->Bool
}


class DataBaseProcessorBase: NSObject, DataBaseProcessor {
    func ProcessIncomingCases(_ covidCases: [CovidCase]) -> Bool {
        return false
    }
    

}
