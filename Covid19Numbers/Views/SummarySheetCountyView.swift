//
//  SummarySheet.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 09.10.20.
//  Copyright © 2020 Dirk Scheidt. All rights reserved.
//

import SwiftUI

struct SummarySheetCountyView: View {
    
    @ObservedObject private var obProps: ObservedProperties
    
    init(observedProperties: ObservedProperties? = nil) {
        if let obsProps = observedProperties {
            self.obProps = obsProps
        } else {
            self.obProps = AppController.appFunctions.GetObservedPropertiesSummary()
        }
    }
    
    var body: some View {
        
        VStack(spacing: 0){
            
            Text(NSLocalizedString("ID_County_Abbrev", comment: "") + self.obProps.dataOfOneCounty.idLandkreis)
                .font(.caption)
                .padding(Edge.Set.top, 10)
                .padding(Edge.Set.bottom, 10)
            
            Divider()
            VStack(spacing: 0){
                List() {
                    if self.obProps.dataOfOneCounty.cases.count == 0 {
                        HStack(alignment: .center) {
                            Spacer()
                            Text(NSLocalizedString("ID_Loading", comment: ""))
                                .frame(minWidth: 100, maxWidth: .infinity, minHeight: 100, maxHeight: .infinity)
                            Spacer()
                        }
                    } else {
                        ForEach(self.obProps.dataOfOneCounty.cases.indices, id: \.self) { index in
                            if self.obProps.dataOfOneCounty.cases[index].cases > 0 {
                                OneDaySummaryCountyView(summary: .constant(self.obProps.dataOfOneCounty.cases[index]))
                            }
                        }
                    }
                }
                .listStyle(PlainListStyle())
            }            
        }.navigationBarTitle(self.obProps.dataOfOneCounty.DisplayName, displayMode: .inline)
    }
}


struct OneDaySummaryCountyView: View {

    @Binding var summary: CovidCaseP
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0){
            Text(NSLocalizedString("ID_Stand", comment: "") + DTAI(dateTimeAsInteger: summary.datetime1000).DateTimeForDisplay()).font(.caption).frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom,8)
            
            HStack(alignment: .top) {
                VStack() {
                    Text(NSLocalizedString("ID_Neue_Faelle_am_Tag", comment: "")).font(.subheadline).padding(.bottom,2).frame(maxWidth: .infinity, alignment: .trailing)
                    Text(NSLocalizedString("ID_Infektionen", comment: "")).font(.subheadline).padding(.bottom, 2).frame(maxWidth: .infinity, alignment: .trailing)
                    Text(NSLocalizedString("ID_Verstorben", comment: "")).font(.subheadline).padding(.bottom,2).frame(maxWidth: .infinity, alignment: .trailing)
                    Text(NSLocalizedString("ID_Genesen", comment: "")).font(.subheadline).padding(.bottom,2).frame(maxWidth: .infinity, alignment: .trailing)
                    Text(NSLocalizedString("ID_InfPro100k", comment: "")).font(.subheadline).padding(.bottom, 2).frame(maxWidth: .infinity, alignment: .trailing)
                    Text(NSLocalizedString("ID_1TagesInzidenz", comment: "")).font(.subheadline).padding(.bottom,2).frame(maxWidth: .infinity, alignment: .trailing)
                    Text(NSLocalizedString("ID_7TageInzidenz", comment: "")).font(.subheadline).padding(.bottom,2).frame(maxWidth: .infinity, alignment: .trailing)
                    Text(NSLocalizedString("ID_Einwohner", comment: "")).font(.subheadline).padding(.bottom,2).frame(maxWidth: .infinity, alignment: .trailing)
                    
                }.frame(maxWidth: .infinity, alignment: .trailing)
                VStack() {
                    Text(DisplayHelpers.FormatIntegerLocale(summary.newCases)).font(.subheadline).padding(.bottom, 2)
                    Text(DisplayHelpers.FormatIntegerLocale(summary.cases)).font(.subheadline).padding(.bottom, 2)
                    Text(DisplayHelpers.FormatIntegerLocale(summary.deaths)).font(.subheadline).padding(.bottom, 2)
                    Text(DisplayHelpers.FormatIntegerLocale(summary.genesen)).font(.subheadline).padding(.bottom, 2)
                    Text(DisplayHelpers.FormatDoubleLocale(summary.cases_per_100k)).font(.subheadline).padding(.bottom,2)
                    Text(DisplayHelpers.FormatDoubleLocale(summary.newCases_per_100k)).font(.subheadline).padding(.bottom, 2)
                    Text(DisplayHelpers.FormatDoubleLocale(summary.cases7_per_100k)).font(.subheadline).padding(.bottom, 2)
                    Text(DisplayHelpers.FormatIntegerLocale(summary.EWZ)).font(.subheadline).padding(.bottom,2)
                    
                }.frame(maxWidth: 100, alignment: .leading)
            }
        }.frame(alignment: .topLeading).padding(.bottom,8)
        
        }
}

#if DEBUG
struct SummarySheetCountyView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SummarySheetCountyView(observedProperties: ObservedProperties())
        }
    }
}
#endif
