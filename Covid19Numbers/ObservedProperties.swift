//
//  ObservedProperties.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 09.10.20.
//  Copyright © 2020 Dirk Scheidt. All rights reserved.
//

import Foundation

public class ObservedProperties: ObservableObject {
    
    @Published var appStatus: AppStatusEnum = AppStatusEnum.NoError
    @Published var newDataArrived: Bool = false
    
    @Published var dataForDisplay = CovidCasesPerObjectIDSP()
    @Published var summarySheetData = CovidCasesPerObjectIDSP()
    @Published var dataOfOneCounty = CovidCasesPerObjectIDP()
    @Published var currentSort: SortType = SortType.alphabetic
    @Published var displayInfoFrame: Bool = false
    @Published var loadingDataFromDB: Bool = false
    @Published var latestTimeStampOfDB: Int64 = 0
    
}
