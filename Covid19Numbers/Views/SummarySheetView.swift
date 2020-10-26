//
//  SummarySheet.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 09.10.20.
//  Copyright © 2020 Dirk Scheidt. All rights reserved.
//

import SwiftUI

struct SummarySheetView: View {
    
    @Binding var showSummaryModal: Bool
    @Binding var summaryForDays: CovidCasesPerObjectIDP
    
    var btnBack : some View {
        Button(action: {
            self.showSummaryModal.toggle()
        }){
            VStack(spacing:0) {
            HStack(alignment: .center, spacing:0) {Image(systemName: "xmark.circle").imageScale(.large)}
                .padding(.bottom, 1)
            HStack(alignment: .center, spacing:0) {Text("ID_Close").font(.caption)}
            }
            .padding([.leading,.trailing], 8)
            .foregroundColor(Color.blue)
        }
    }
    
    var body: some View {
        
        VStack(spacing: 0){
            Text(NSLocalizedString("ID_Summen", comment: ""))
                .font(.title)
                .padding(Edge.Set.bottom, 10)
                .padding(Edge.Set.top, 15)//.background(Color.green)
            Divider()
            VStack(spacing: 0){
                List() {
                    if self.summaryForDays.cases.count == 0 {
                        HStack(alignment: .center) {
                            Spacer()
                            Text(NSLocalizedString("ID_Loading", comment: ""))
                                .frame(minWidth: 100, maxWidth: .infinity, minHeight: 100, maxHeight: .infinity)
                            Spacer()
                        }
                    } else {
                        ForEach(self.summaryForDays.cases.indices, id: \.self) { index in
                            if self.summaryForDays.cases[index].cases > 0 {
                                OneDaySummaryView(summary: self.$summaryForDays.cases[index])
                            }
                        }
                    }
                }
                .listStyle(PlainListStyle())
            }            
            Divider()
            HStack {
                Spacer()
                self.ButtonBack()
            }
            .padding([.leading, .trailing])
            .padding(.top, 7)
            .padding(.bottom, 7)
            .background(Color(.systemGray6)) //.background(Color(.green))
        }
    }
    
    func ButtonBack() -> some View {
        return self.btnBack
    }
}


struct OneDaySummaryView: View {

    @Binding var summary: CovidCaseP
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0){
            Text(NSLocalizedString("ID_Stand", comment: "") + DTAI(dateTimeAsInteger: summary.datetime1000).DateTimeForDisplay()).font(.caption).frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom,8)
            
            HStack(alignment: .top) {
                VStack() {
                    Text(NSLocalizedString("ID_Neue_Faelle_am_Tag", comment: "")).font(.subheadline).padding(.bottom,2).frame(maxWidth: .infinity, alignment: .trailing)
                    Text(NSLocalizedString("ID_Einwohner", comment: "")).font(.subheadline).padding(.bottom,2).frame(maxWidth: .infinity, alignment: .trailing)
                    Text(NSLocalizedString("ID_Infektionen", comment: "")).font(.subheadline).padding(.bottom, 2).frame(maxWidth: .infinity, alignment: .trailing)
                    Text(NSLocalizedString("ID_Verstorben", comment: "")).font(.subheadline).padding(.bottom,2).frame(maxWidth: .infinity, alignment: .trailing)
                    Text(NSLocalizedString("ID_Genesen", comment: "")).font(.subheadline).padding(.bottom,2).frame(maxWidth: .infinity, alignment: .trailing)
                    if summary.cases1SummaryComplete == true {
                        Text(NSLocalizedString("ID_1TagesInzidenz", comment: "")).font(.subheadline).padding(.bottom,2).frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    if summary.cases7SummaryComplete == true {
                        Text(NSLocalizedString("ID_7TageInzidenz", comment: "")).font(.subheadline).padding(.bottom,2).frame(maxWidth: .infinity, alignment: .trailing)
                    }
                }.frame(maxWidth: .infinity, alignment: .trailing)
                VStack() {
                    Text(DisplayHelpers.FormatIntegerLocale(summary.newCases)).font(.subheadline).padding(.bottom, 2)
                    Text(DisplayHelpers.FormatIntegerLocale(summary.EWZ)).font(.subheadline).padding(.bottom, 2)
                    Text(DisplayHelpers.FormatIntegerLocale(summary.cases)).font(.subheadline).padding(.bottom, 2)
                    Text(DisplayHelpers.FormatIntegerLocale(summary.deaths)).font(.subheadline).padding(.bottom, 2)
                    Text(DisplayHelpers.FormatIntegerLocale(summary.genesen)).font(.subheadline).padding(.bottom, 2)
                    if summary.cases1SummaryComplete == true {
                        Text(DisplayHelpers.FormatDoubleLocale(summary.newCases_per_100k)).font(.subheadline).padding(.bottom,2)
                    }
                    if summary.cases7SummaryComplete == true {
                        Text(DisplayHelpers.FormatDoubleLocale(summary.cases7_per_100k)).font(.subheadline).padding(.bottom,2)
                    }
                }.frame(maxWidth: 100, alignment: .leading)
            }
        }.frame(alignment: .topLeading).padding(.bottom,8)
        
        }
}

#if DEBUG
struct SummarySheetView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SummarySheetView(showSummaryModal: .constant(true), summaryForDays: .constant(MakeSummaryArray()))
            Text("Enable 'Live-Preview' to see the sheet!").sheet(isPresented: .constant(true)) {
                SummarySheetView(showSummaryModal: .constant(true), summaryForDays: .constant(MakeSummaryArray()))
        }
        }
    }
}
#endif
