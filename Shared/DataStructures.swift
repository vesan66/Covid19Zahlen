//
//  DataStructures.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 09.10.20.
//  Copyright © 2020 Dirk Scheidt. All rights reserved.
//

import Foundation

public enum SortType: Int {
    case alphabetic = 1
    case casesPer100k = 2
    case cases7Per100k = 3
    case cases1Per100k = 4
}

public typealias CovidCaseS = [CovidCase]
public struct CovidCase {
    var id: Int64 = 0
    var OBJECTID: Int64 = 0
    var idLandkreis: String = ""
    var GEN: String = ""
    var BEZ: String = "" 
    var BL: String = ""
    var EWZ: Int64 = 0
    var cases: Int64 = 0
    var cases_per_100k: Double = 0
    var cases7_per_100k: Double = 0
    var deaths: Int64 = 0
    var genesen: Int64 = 0
    var last_update: String = ""
    var datetime1000: Int64 = 0
    var dupprevent: String = ""
    var newCases: Int64 = 0
    var newCases_per_100k: Double = 0
    var date1000: Int64 = 0
}

public struct CovidCase_Latest {
    var last_update: String = ""
    var datetime1000: Int64 = 0
}

public struct CovidCase_Recovered {
    var idLandkreis: String = ""
    var genesen: Int64 = 0
    var last_update: String = ""
    var datetime1000: Int64 = 0
}

public struct CovidCase_NewCases {
    var idLandkreis: String = ""
    var newCases: Int64 = 0
    var last_update: String = ""
    var datetime1000: Int64 = 0
}
