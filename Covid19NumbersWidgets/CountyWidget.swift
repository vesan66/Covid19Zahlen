//
//  CountyWidget.swift
//  Covid19NumbersWidgets
//
//  Created by Dirk Scheidt on 30.10.20.
//

import WidgetKit
import SwiftUI
import Intents
import os.log

struct Provider: IntentTimelineProvider {
    
    typealias Intent = ConfigurationIntent
    
    func placeholder(in context: Context) -> CountyEntry {
        CountyEntry(date: Date(), configuration: Intent(), cases: emptyCounty)
    }

    func getSnapshot(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (CountyEntry) -> ()) {
        let entry = CountyEntry(date: Date(), configuration: configuration, cases: emptyCounty)
        completion(entry)
    }

    func getTimeline(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        
        var cases: CasesCounty = emptyCounty
        var entries: [CountyEntry] = []
        let sqlReader = SQLiteReader()
        if let landkreisID = getLandkreisID(for: configuration) {
            if sqlReader.OpenDataBaseAwait() == true {
                let data: CovidCasesPerObjectIDSP = sqlReader.GetAllDaysOfOneCountyForDisplayAwait(idLandkreis: landkreisID)
                if data.summaryForDays.cases.count > 0 {
                    let county = data.cases[0]
                    cases.countyName = county.DisplayName
                    cases.newCasesReported = county.cases[0].newCases
                    cases.reportDate = county.cases[0].datetime1000
                    cases.sevenDayIncidence = county.cases[0].cases7_per_100k
                    cases.oneDayIncidence = county.cases[0].newCases_per_100k
                    entries.append(CountyEntry(date: Date(),configuration: configuration, cases: cases))
                }
                sqlReader.CloseDataBaseAwait()
            }
            
        }
        
        if entries.isEmpty {
            entries.append(CountyEntry(date: Date(),configuration: configuration, cases: emptyCounty))
        }
        
//        // Passive Version: Waits for ever.
//        let timeline = Timeline(entries: [CountyEntry(date: Date(),configuration: configuration, cases: cases)], policy: .never)
        
        // Request a timeline refresh after 60 minutes.
        let refreshDate = Calendar.current.date(byAdding: .minute, value: 60, to: Date())
        var timeline: Timeline<Entry>
        if let _ = refreshDate {
            Logger.data.notice("Setting refresh timeline to: \(DTAI(dateTimeAsDate: refreshDate!).DateTimeForDisplay(),privacy: .public)")
            timeline = Timeline(entries: [CountyEntry(date: Date(), configuration: configuration, cases: cases)], policy: .after(refreshDate!))
        } else {
            Logger.data.notice("Can't set a refreshtime.")
            timeline = Timeline(entries: [CountyEntry(date: Date(), configuration: configuration, cases: cases)], policy: .never)
        }
        
        completion(timeline)
    }
    
    func getLandkreisID(for configuration: ConfigurationIntent) -> String? {
        
        if let landkreisID = configuration.County?.identifier {
            return landkreisID
        }
        return nil
    }
}

struct CountyEntry: TimelineEntry {
    let date: Date
    let configuration: ConfigurationIntent
    var cases: CasesCounty
}

struct CountyWidgetEntryView : View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var entry: Provider.Entry

    var body: some View {
        ZStack {
            Color(.systemGray5)
            ZStack {
                VStack(spacing: 0) {
                Text(self.entry.cases.countyName)
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
                            .font(.system(size: 28))
                            .lineLimit(1)
                        Spacer()
                    }
                    .padding(.bottom, 6)
                    .padding(.top, 7)
                    
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
                        .padding(.bottom, 5)
                        .padding(.leading, 8)
                    }
                    HStack(spacing: 0) {
                        Spacer()
                        HStack(alignment: .bottom, spacing: 0) {
                            let odi = DisplayHelpers.FormatDoubleLocale(self.entry.cases.oneDayIncidence)
                            Text(NSLocalizedString("1-d-i: ", comment: ""))
                                .font(.system(size: 6))
                                .padding(.bottom, 7)
                            Text("\(odi)")
                                .font(.system(size: 22))
                                .lineLimit(1)
                            Spacer()
                        }
                        //.padding(.bottom, 3)
                        .padding(.leading, 12)
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


struct CountyWidget: Widget {
    let kind: String = "Incidents County"

    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind, intent: ConfigurationIntent.self, provider: Provider()) { entry in
            CountyWidgetEntryView(entry: entry)
        }
        .configurationDisplayName(NSLocalizedString("Incidents County", comment: ""))
        .description(NSLocalizedString("Incidents per County", comment: ""))
        .supportedFamilies([.systemSmall])
    }
}

struct CountyWidget_Previews: PreviewProvider {
    static var previews: some View {
        CountyWidgetEntryView(entry: CountyEntry(date: Date(), configuration: ConfigurationIntent(), cases: emptyCounty))
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
