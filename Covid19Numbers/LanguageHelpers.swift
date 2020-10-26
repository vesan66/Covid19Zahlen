//
//  LanguageHelpers.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 10.10.20.
//  Copyright © 2020 Dirk Scheidt. All rights reserved.
//

import Foundation

final class LanguageHelpers {
    public static let FileExtensionRTF: String = "rtf"
    
    public class func LoadNSAttributedString(_ filename: String) -> NSAttributedString {
        
        let data: Data
        let lng: String = get_Avail_Lang()
        
        guard let file = Bundle.main.url(forResource: "\(filename)\(lng)", withExtension: self.FileExtensionRTF)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
        }
        
        do {
            data = try Data(contentsOf: file)
        } catch {
            fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
        }
        
        do {
            let attributedString: NSAttributedString =
                try NSAttributedString.init(data: data,
                                            options: [NSAttributedString.DocumentReadingOptionKey.documentType: NSAttributedString.DocumentType.rtf],
                                            documentAttributes: nil)
            print("Loaded: \(filename)\(lng).\(self.FileExtensionRTF)")
            
            return attributedString
            
            } catch {
                fatalError("Could not paste data into read attributedString for file \(filename).")
            }
    }
    
    private class func get_Avail_Lang() -> String {
        let preferredLanguage = Locale.preferredLanguages[0] as String
        print (preferredLanguage)
        if preferredLanguage.count >= 2 {
            let first = preferredLanguage.prefix(2)
            switch first {
                case "en":
                    return "EN"
                case "de":
                    return "DE"
                default:
                    return "EN"
            }
        }
        return "EN"
    }
}
