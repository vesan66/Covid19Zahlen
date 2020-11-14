//
//  ObservedProperties.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 09.10.20.
//  Copyright © 2020 Dirk Scheidt. All rights reserved.
//

import Foundation
import os.log

public class ObservedProperties: ObservableObject {
    
    @Published var appStatus = AppStatusEnum.NoError
    
    @Published var displayNewData = UUID()
    @Published var displayNewDataOfOneCounty = UUID()
    
    @Published var dataForDisplay = CovidCasesPerObjectIDSP()
    @Published var summarySheetData = CovidCasesPerObjectIDSP()
    @Published var dataOfOneCounty = CovidCasesPerObjectIDP()
    @Published var currentSort = SortType.alphabetic
    
    
    @Published var displayInfoFrame = false
    
    @Published var latestTimeStampAtDisplay: Int64 = 0
    @Published var latestTimeStampOfDB: Int64 = 0
    
    public func raiseDisplayData() {
        Logger.funcStart.notice("raiseDisplayData")
        self.displayNewData = UUID()
    }
    
    public func raiseDisplayDataOfOneCounty() {
        Logger.funcStart.notice("raiseDisplayDataOfOneCounty")
        self.displayNewDataOfOneCounty = UUID()
    }
    
    public func clear() {
        self.appStatus = AppStatusEnum.NoError
        
        self.displayNewData = UUID()
        self.displayNewDataOfOneCounty = UUID()
        
        self.dataForDisplay = CovidCasesPerObjectIDSP()
        self.summarySheetData = CovidCasesPerObjectIDSP()
        self.dataOfOneCounty = CovidCasesPerObjectIDP()
        self.currentSort = SortType.alphabetic
        self.displayInfoFrame = false
        
        self.latestTimeStampAtDisplay = 0
        self.latestTimeStampOfDB = 0
    }
}


public class InterCom: ObservableObject {
    
    @Published var newDataInLocalDB = UUID()
    
    var latestTimeStampOfDB:        Int64 = 0
    var latestTimeStampAtDisplay:   Int64 = 0
    
    public func SetNewDataInLocalDB() {
        self.newDataInLocalDB = UUID()
    }
    
    public func clear() {
        self.newDataInLocalDB = UUID()
        self.latestTimeStampOfDB = 0
        self.latestTimeStampAtDisplay  = 0
    }
}
