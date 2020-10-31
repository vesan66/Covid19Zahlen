//
//  IntentHandler.swift
//  CountyWidgetIntentExtension
//
//  Created by Dirk Scheidt on 31.10.20.
//

import Intents

class IntentHandler: INExtension, ConfigurationIntentHandling {
    
    
    func provideCountyOptionsCollection(for intent: ConfigurationIntent, with completion: @escaping (INObjectCollection<County>?, Error?) -> Void) {
        var counties: [County] = [County]()
        
        let sqlReader = SQLiteReader()
        if sqlReader.OpenDataBaseAwait() == true {
            let data = sqlReader.GetFavoritesSelectionListAwait()
            if data.count > 0 {
                for item in data {
                    counties.append(County(identifier: item.key, display: item.value))
                }
            }
            sqlReader.CloseDataBaseAwait()
        }
        
        if counties.isEmpty {
            counties.append(County(identifier: "SomeWhere", display: "SomeWhere"))
        }
        
        let collection = INObjectCollection(items: counties)
        
        completion(collection, nil)
    }
    
    override func handler(for intent: INIntent) -> Any {
        // This is the default implementation.  If you want different objects to handle different intents,
        // you can override this and return the handler you want for that particular intent.
        
        return self
    }
    
}
