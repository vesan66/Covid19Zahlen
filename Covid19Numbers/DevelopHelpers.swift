//
//  DevelopHelpers.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 29.09.20.
//  Copyright © 2020 Dirk Scheidt. All rights reserved.
//

import Foundation

#if DEBUG
func MakeCounty() -> CovidCasesPerObjectIDP {
    let county = CovidCasesPerObjectIDP()

    
    let item  = CovidCaseP()
    item.OBJECTID  = 304
    item.GEN = "Würzburg"
    item.BEZ = "Landkreis"
    item.BL = "Bayern"
    item.EWZ = 161834
    item.cases = 634
    item.idLandkreis = "239"
    item.cases_per_100k = 391.759457221597
    item.cases7_per_100k = 24.716684998208
    item.last_update = "24.09.2020, 00:00 Uhr"
    item.datetime1000 = ServerRequestHelpers.TranslateLastUpdateToInt64(dateString: item.last_update)
    item.dupprevent = (ServerRequestHelpers.CreateDuppreventField(idLandkreis: item.idLandkreis, last_update: item.datetime1000))
    item.GenerateDateTimeOfLastUpdate()
    item.GenerateDisplayName()
    item.genesen = 95
    item.deaths = 3
    item.newCases = 66
    item.newCases_per_100k = 19.33
    
    county.DisplayName = item.DisplayName
    county.idLandkreis = item.idLandkreis
    county.cases.append(item)
    
    let item2 = CovidCaseP()
    item2.OBJECTID  = 304
    item2.GEN = "Würzburg"
    item2.BEZ = "Landkreis"
    item2.BL = "Bayern"
    item2.EWZ = 161834
    item2.cases = 630
    item2.idLandkreis = "3239"
    item2.cases_per_100k = 389.28778872177702
    item2.cases7_per_100k = 27.806270622984002
    item2.last_update = "23.09.2020, 00:00 Uhr"
    item2.datetime1000 = ServerRequestHelpers.TranslateLastUpdateToInt64(dateString: item2.last_update)
    item2.dupprevent = (ServerRequestHelpers.CreateDuppreventField(idLandkreis: item2.idLandkreis, last_update: item2.datetime1000))
    item2.GenerateDateTimeOfLastUpdate()
    item2.GenerateDisplayName()
    item2.genesen = 35
    item2.deaths = 2
    item2.newCases = 66
    item2.newCases_per_100k = 22.55
    
    county.cases.append(item2)
    
    return county
}

func MakeSummary() -> CovidCaseP {
    
    let item  = CovidCaseP()
    item.OBJECTID  = 0
    item.GEN = ""
    item.BEZ = ""
    item.BL = ""
    item.EWZ = 0
    item.cases = 634
    item.idLandkreis = "239"
    item.cases_per_100k = 391.759457221597
    item.cases7_per_100k = 24.716684998208
    item.last_update = "24.09.2020, 00:00 Uhr"
    item.datetime1000 = ServerRequestHelpers.TranslateLastUpdateToInt64(dateString: item.last_update)
    item.dupprevent = (ServerRequestHelpers.CreateDuppreventField(idLandkreis: item.idLandkreis, last_update: item.datetime1000))
    item.GenerateDateTimeOfLastUpdate()
    item.GenerateDisplayName()
    item.genesen = 42
    item.deaths = 28
    item.newCases = 66
    item.newCases_per_100k = 19.33
    return item
}

func MakeSummaryArray() -> CovidCasesPerObjectIDP {
    let a = CovidCasesPerObjectIDP()
    
    let item  = CovidCaseP()
    item.OBJECTID  = 0
    item.GEN = "München"
    item.BEZ = "Landkreis"
    item.BL = ""
    item.EWZ = 0
    item.cases = 634
    item.idLandkreis = "0239"
    item.cases_per_100k = 391.759457221597
    item.cases7_per_100k = 24.716684998208
    item.last_update = "24.09.2020, 00:00 Uhr"
    item.datetime1000 = ServerRequestHelpers.TranslateLastUpdateToInt64(dateString: item.last_update)
    item.dupprevent = (ServerRequestHelpers.CreateDuppreventField(idLandkreis: item.idLandkreis, last_update: item.datetime1000))
    item.GenerateDateTimeOfLastUpdate()
    item.GenerateDisplayName()
    item.genesen = 42
    item.deaths = 28
    item.newCases = 66
    item.newCases_per_100k = 19.33
    a.DisplayName = item.DisplayName
    a.idLandkreis = item.idLandkreis
    a.cases.append(item)
    a.casesKeys[item.datetime1000] = item
    
    let item2  = CovidCaseP()
    item2.OBJECTID  = 0
    item2.GEN = "München"
    item2.BEZ = "Landkreis"
    item2.BL = ""
    item2.EWZ = 0
    item2.cases = 634
    item2.idLandkreis = "0239"
    item2.cases_per_100k = 391.759457221597
    item2.cases7_per_100k = 23.716684998208
    item2.last_update = "25.09.2020, 00:00 Uhr"
    item2.datetime1000 = ServerRequestHelpers.TranslateLastUpdateToInt64(dateString: item.last_update)
    item2.dupprevent = (ServerRequestHelpers.CreateDuppreventField(idLandkreis: item2.idLandkreis, last_update: item2.datetime1000))
    item2.GenerateDateTimeOfLastUpdate()
    item2.GenerateDisplayName()
    item2.genesen = 35
    item2.deaths = 2
    item2.newCases = 66
    item2.newCases_per_100k = 19.33
    a.DisplayName = item.DisplayName
    a.idLandkreis = item.idLandkreis
    a.cases.append(item2)
    a.casesKeys[item2.datetime1000] = item2
    
    return a
}

//func PrepareDataLoderForTest()->DataController{
//    let dataControler = DataController()
//    let a = CovidCasesPerObjectIDP()
//    a.DisplayName = "Würzburg"
//    a.OBJECTID = 22
//    dataControler.countiesDataForDisplay.append(a)
//    let b = CovidCasesPerObjectIDP()
//    b.DisplayName = "München"
//    b.OBJECTID = 23
//    dataControler.countiesDataForDisplay.append(b)
//    return dataControler
//}

#endif
