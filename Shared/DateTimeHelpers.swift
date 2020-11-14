//
//  DateTimeHelpers.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 01.10.20
//  Copyright © 2020 Dirk Scheidt. All rights reserved.
//

import Foundation

/// Helper structure for dealing with the dates.
public struct DTAI {
    
    public typealias DateTime1000 = Int64
    
    private static let discardMiliSecByExtending: Int64 = 1000
    static let aDayInSecondsAsInteger: Int64 = 24 * 60 * 60 * DTAI.discardMiliSecByExtending
    
    var datePartAsInteger: Int64
    var timePartAsInteger: Int64
    
    var dateTimeAsInteger: Int64 {
        get {
        return datePartAsInteger + timePartAsInteger
        }
    }
    
    var parseError: Bool = false
    
    var datePartAsDate: Date {
        get {
            let ti = TimeInterval(datePartAsInteger / DTAI.discardMiliSecByExtending)
            return Date.init(timeIntervalSince1970: ti)
        }
    }
    
    var dateTimeAsDate: Date {
        get {
            let ti = TimeInterval(dateTimeAsInteger / DTAI.discardMiliSecByExtending)
            return Date.init(timeIntervalSince1970: ti)
        }
    }
    
    var dateTimeAsTimeInterval: TimeInterval {
        get {
            let ti = TimeInterval(dateTimeAsInteger / DTAI.discardMiliSecByExtending)
            return ti
        }
    }
    
    init(datePartAsInteger: Int64, timePartAsInteger: Int64) {
        self.datePartAsInteger = datePartAsInteger
        self.timePartAsInteger = timePartAsInteger
    }
    
    init(dateTimeAsInteger: Int64) {
        let dayPart: Int64 = dateTimeAsInteger / DTAI.aDayInSecondsAsInteger
        self.datePartAsInteger = dayPart * DTAI.aDayInSecondsAsInteger
        self.timePartAsInteger = dateTimeAsInteger - datePartAsInteger
    }
    
    init(dateTimeAsDate: Date) {
        let dateTimeAsInteger = Int64(dateTimeAsDate.timeIntervalSince1970 * Double(DTAI.discardMiliSecByExtending))
        self.init(dateTimeAsInteger: dateTimeAsInteger)
    }
    

}

/// Extension for german date-string from DB.
extension DTAI {
    
    /// Translates incoming DateTime String as given from the German Covid-Data-Server
    /// - Parameter dateStringFromCovidServer_DE: Belongs to this format: "dd','MM','yyyy', 'HH':'mm' Uhr'"
    init(dateStringFromCovidServer_DE: String) {
        var parseError: Bool = false
        let date: Date
        let formatter = DateFormatter()
        formatter.dateFormat = "dd','MM','yyyy', 'HH':'mm' Uhr'" //"23.09.2020, 00:00 Uhr"
        formatter.locale = Locale.init(identifier: "de_DE")
        formatter.timeZone = TimeZone.init(secondsFromGMT: 0)
        if let dateTest = formatter.date(from: dateStringFromCovidServer_DE) {
            date = dateTest
        } else {
            date = Date(timeIntervalSince1970: Double(0.0))
            parseError = true
        }
        self.init(dateTimeAsDate: date)
        self.parseError = parseError
    }
}

/// Extension for Display.
extension DTAI {
    func DateForDisplay() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = NSLocale.current
        dateFormatter.timeZone = TimeZone.init(secondsFromGMT: 0)
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .none
        return dateFormatter.string(from: dateTimeAsDate)
    }
    func DateTimeForDisplay() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = NSLocale.current
        dateFormatter.timeZone = TimeZone.init(secondsFromGMT: 0)
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .short
        return dateFormatter.string(from: dateTimeAsDate)
    }
}
