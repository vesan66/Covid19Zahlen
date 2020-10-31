//
//  Country.swift
//  Covid19NumbersWidgetDriver
//
//  Created by Dirk Scheidt on 30.10.20.
//

import WidgetKit
import SwiftUI

struct CountryProvider: TimelineProvider {
    
    public typealias Entry = CountryEntry
    
    func placeholder(in context: Context) -> CountryEntry {
        return CountryEntry(date: Date(), cases: emptyCountry)
    }
    
    func getSnapshot(in context: Context, completion: @escaping (CountryEntry) -> Void) {
        let entry = CountryEntry(date: Date(), cases: emptyCountry)
        completion(entry)
    }
    
    func getTimeline(in context: Context, completion: @escaping (Timeline<CountryEntry>) -> Void) {
        var cases: CasesCountry = emptyCountry
        var entries: [CountryEntry] = []
        let sqlReader = SQLiteReader()
        if sqlReader.OpenDataBaseAwait() == true {
            let data: CovidCasesPerObjectIDSP = sqlReader.GetAllDaysOfCovidCasesForDisplayAwait()
            if data.summaryForDays.cases.count > 0 {
                let day = data.summaryForDays.cases[0]
                cases.newCasesReported = day.newCases
                cases.reportDate = day.datetime1000
                cases.sevenDayIncidence = day.cases7_per_100k
                entries.append(CountryEntry(date: Date(), cases: cases))
            }
            sqlReader.CloseDataBaseAwait()
        }
        
        if entries.isEmpty {
            entries.append(CountryEntry(date: Date(), cases: emptyCountry))
        }
        
        let timeline = Timeline(entries: [CountryEntry(date: Date(), cases: cases)], policy: .never)
        completion(timeline)
    }
}

struct CountryEntry: TimelineEntry {
    public let date: Date
    var cases: CasesCountry
}

struct CountryPlaceholderView: View {
    var body: some View {
        CountryWidgetEntryView(entry: CountryEntry(date: Date(), cases: emptyCountry))
    }
}

struct CountryWidgetEntryView: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var entry: CountryProvider.Entry

    var body: some View {
        ZStack {
            Color(.systemGray5)
            ZStack {
                VStack(spacing: 0) {
                Text(NSLocalizedString("Germany", comment: ""))
                    //.font(.largeTitle)
                    .font(.system(size: 35))
                    .fontWeight(.light)
                    .lineLimit(2)
                    .padding(.bottom,2)
                    .foregroundColor(colorScheme == .dark ? Color(.darkGray) : Color(.white))
                //Spacer()
                }
                VStack(alignment: .leading ,spacing: 0) {
                    
                    
                    HStack(alignment: .bottom, spacing: 0) {
                        let ncr = DisplayHelpers.FormatIntegerLocale(self.entry.cases.newCasesReported)
                        Text(NSLocalizedString("cases ", comment: ""))
                            .font(.system(size: 6))
                            .padding(.bottom, 7)
                        Text("\(ncr)")
                            .font(.system(size: 25))
                            .lineLimit(1)
                        Spacer()
                    }
                    .padding(.bottom, 18)
                    .padding(.top, 13)
                    
                    HStack(spacing: 0) {
                        Spacer()
                        HStack(alignment: .bottom, spacing: 0) {
                            let sdi = DisplayHelpers.FormatDoubleLocale(self.entry.cases.sevenDayIncidence)
                            Text(NSLocalizedString("7-d-i: ", comment: ""))
                                .font(.system(size: 6))
                                .padding(.bottom, 7)
                            Text("\(sdi)")
                                .font(.system(size: 35))
                                .lineLimit(1)
                            Spacer()
                        }
                        //.padding(.bottom, 3)
                    }
                    Spacer()
                    HStack(spacing: 0) {
                        Spacer()
                        let dt = DTAI(dateTimeAsInteger: self.entry.cases.reportDate).DateTimeForDisplay()
                        Text("\(dt)")
                            .font(.system(size: 6))
                    }
                        
                }
            }.padding([.bottom,.top], 8)
            .padding([.leading,.trailing], 8)
        }
        
    }
}

struct CountryWidget: Widget {
    private let kind: String = "CountryWidget"

    public var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: CountryProvider()) { entry in
            CountryWidgetEntryView(entry: entry)
        }
        .configurationDisplayName(NSLocalizedString("Country Numbers", comment: ""))
        .description(NSLocalizedString("Overview Country", comment: ""))
        .supportedFamilies([.systemSmall])
    }
}

struct CountryWidget_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CountryWidgetEntryView(entry: CountryEntry(date: Date(), cases: emptyCountry))
                .previewContext(WidgetPreviewContext(family: .systemSmall))
        }
    }
}

@main
struct Covid19Bundle: WidgetBundle {
    @WidgetBundleBuilder
    var body: some Widget {
        CountyWidget()
        CountryWidget()
    }
}
