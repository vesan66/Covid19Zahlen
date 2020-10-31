//
//  DataTypes.swift
//  Covid19NumbersWidgetDriver
//
//  Created by Dirk Scheidt on 30.10.20.
//

import Foundation

typealias DateTime1000 = Int64
struct CasesCountry {
    public var newCasesReported: Int64
    public var sevenDayIncidence: Double
    public var reportDate: DateTime1000
}

let emptyCountry = CasesCountry(newCasesReported: 0, sevenDayIncidence: 0, reportDate: DTAI(dateTimeAsDate: Date()).datePartAsInteger)

struct CasesCounty {
    public var countyName: String
    public var newCasesReported: Int64
    public var oneDayIncidence: Double
    public var sevenDayIncidence: Double
    public var reportDate: DateTime1000
}

let emptyCounty = CasesCounty(countyName: "Somewhere", newCasesReported: 0, oneDayIncidence:0, sevenDayIncidence: 0, reportDate: DTAI(dateTimeAsDate: Date()).datePartAsInteger)
