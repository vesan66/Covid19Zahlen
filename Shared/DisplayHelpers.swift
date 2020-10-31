//
//  Helpers.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 29.09.20.
//  Copyright © 2020 Dirk Scheidt. All rights reserved.
//

import Foundation

final class DisplayHelpers: NSObject {
    
    /// Format a given double to countryspecific Layout.
    /// - Parameter number: Given number.
    /// - Returns: Formated String.
    static func FormatDoubleLocale(_ number: Double) -> String {
        return DisplayHelpers.FormatDoubleLocale(number, locale: NSLocale.current)
    }
    
    /// Format a given double to countryspecific Layout.
    /// - Parameters:
    ///   - number: Given number.
    ///   - locale: locale key like 'de_DE'.
    /// - Returns: Formated String.
    static func FormatDoubleLocale(_ number: Double, locale: Locale) -> String {
        var result: String
        let nf = NumberFormatter()
        nf.locale = locale
        nf.numberStyle = NumberFormatter.Style.decimal
        nf.minimumFractionDigits = 1
        nf.maximumFractionDigits = 1
        let nsNumber = NSNumber(value: number)
        result = nf.string(from: nsNumber)!
        return result
    }
    
    /// Format a given integer to countryspecific Layout.
    /// - Parameter number: Given number.
    /// - Returns: Formated String.
    static func FormatIntegerLocale(_ number: Int64) -> String {
        return DisplayHelpers.FormatIntegerLocale(number, locale: NSLocale.current)
    }
    
    /// Format a given double to countryspecific Layout.
    /// - Parameters:
    ///   - number: Given number.
    ///   - locale: locale key like 'de_DE'.
    /// - Returns: Formated String.
    static func FormatIntegerLocale(_ number: Int64, locale: Locale) -> String {
        var result: String
        let nf = NumberFormatter()
        nf.locale = locale
        nf.numberStyle = NumberFormatter.Style.decimal
        nf.minimumFractionDigits = 0
        nf.maximumFractionDigits = 0
        let nsNumber = NSNumber(value: number)
        result = nf.string(from: nsNumber)!
        return result
    }
    
}
