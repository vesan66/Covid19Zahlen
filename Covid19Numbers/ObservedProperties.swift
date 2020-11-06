//
//  ObservedProperties.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 09.10.20.
//  Copyright © 2020 Dirk Scheidt. All rights reserved.
//

import Foundation

public class ObservedProperties: ObservableObject {
    
    @Published var appStatus = AppStatusEnum.NoError
    
    //@Published var newDataLoadedForDisplay = UUID()  // Means: New Data are storde here for Display.
    @Published var displayNewData = UUID()           // Means: Pleas display the here given Data.
    
    @Published var dataForDisplay = CovidCasesPerObjectIDSP()
    @Published var summarySheetData = CovidCasesPerObjectIDSP()
    @Published var dataOfOneCounty = CovidCasesPerObjectIDP()
    @Published var currentSort = SortType.alphabetic
    
    
    @Published var displayInfoFrame = false
    
    @Published var latestTimeStampAtDisplay: Int64 = 0
    @Published var latestTimeStampOfDB: Int64 = 0
    
//    public func setNewDataLoadedForDisplay() {
//        self.newDataLoadedForDisplay = UUID()
//    }
    
    public func raiseDisplayData() {
        self.displayNewData = UUID()
    }
    
    public func clear() {
        self.appStatus = AppStatusEnum.NoError
        
        //self.newDataLoadedForDisplay = UUID()
        self.displayNewData = UUID()
        
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
        //self.objectWillChange.send()
    }
    
    public func clear() {
        self.newDataInLocalDB = UUID()
        self.latestTimeStampOfDB = 0
        self.latestTimeStampAtDisplay  = 0
    }
}
