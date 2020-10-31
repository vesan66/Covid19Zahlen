//
//  CovidCaseP.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 28.09.20.
//  Copyright © 2020 Dirk Scheidt. All rights reserved.
//

import Foundation

public class CovidCaseP: ObservableObject {
    @Published var id: Int64 = 0
    @Published var OBJECTID: Int64 = 0
    @Published var GEN: String = ""
    @Published var BEZ: String = ""
    @Published var DisplayName: String = ""
    @Published var BL: String = ""
    @Published var EWZ: Int64 = 0
    @Published var cases: Int64 = 0
    @Published var cases_per_100k: Double = 0
    @Published var cases7_per_100k: Double = 0
    @Published var dateTimeOfLastUpdate: Date = Date.init(timeIntervalSince1970: TimeInterval(0))
    @Published var last_update: String = ""
    @Published var datetime1000: Int64 = 0
    @Published var dupprevent: String = ""
    
    @Published var idLandkreis: String = ""
    @Published var deaths: Int64 = 0
    @Published var genesen: Int64 = 0
    
    @Published var newCases_per_100k: Double = 0
    @Published var newCases: Int64 = 0
    
    @Published var date1000: Int64 = 0
    
    @Published var cases7SummaryComplete: Bool = false
    @Published var cases1SummaryComplete: Bool = false
    
    public func GenerateDisplayName(){
        DisplayName = GEN + (BEZ != "" ? " " : "") + BEZ
    }
    
    public func GenerateDateTimeOfLastUpdate(){
        dateTimeOfLastUpdate = Date.init(timeIntervalSince1970: TimeInterval(datetime1000))
    }
    
    public func clear() {
        self.id = 0
        self.OBJECTID = 0
        self.GEN = ""
        self.BEZ = ""
        self.DisplayName = ""
        self.BL = ""
        self.EWZ = 0
        self.cases = 0
        self.cases_per_100k = 0
        self.cases7_per_100k = 0
        self.dateTimeOfLastUpdate = Date.init(timeIntervalSince1970: TimeInterval(0))
        self.last_update = ""
        self.datetime1000 = 0
        self.dupprevent = ""
        self.idLandkreis = ""
        self.deaths = 0
        self.genesen = 0
        self.newCases = 0
        self.newCases_per_100k = 0
        self.date1000 = 0
        self.cases7SummaryComplete = false
        self.cases1SummaryComplete = false
    }
    
}

public class CovidCasesPerObjectIDP: ObservableObject {
    @Published var idLandkreis: String = ""
    @Published var DisplayName: String = ""
    @Published var IsFavorite: Bool = false
    @Published var cases: [CovidCaseP] = [CovidCaseP]()
    var casesKeys: [Int64 : CovidCaseP] = [Int64 : CovidCaseP]()
}

public class CovidCasesPerObjectIDSP: ObservableObject {
    @Published var summary = CovidCaseP()
    @Published var summaryForDays: CovidCasesPerObjectIDP = CovidCasesPerObjectIDP()
    @Published var cases: [CovidCasesPerObjectIDP] = [CovidCasesPerObjectIDP]()
    @Published var casesFavorites: [CovidCasesPerObjectIDP] = [CovidCasesPerObjectIDP]()
}
