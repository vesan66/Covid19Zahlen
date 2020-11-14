//
//  GetActualTimeStampFromServer.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 11.11.20.
//

import Foundation
import os.log


class GetActualTimeStampFromServer: NSObject, GetFromServer {
    
    private var urlAddress: String { return "https://services7.arcgis.com/mOBPykOjAyBO2ZKk/arcgis/rest/services/RKI_Landkreisdaten/FeatureServer/0/query" }
    
    private lazy var qParam_where_all: URLQueryItem = URLQueryItem(name: "where", value: "1=1")
    private lazy var qParam_outfields: URLQueryItem = URLQueryItem(name: "outFields", value: "")
    private lazy var qParam_outStatistics: URLQueryItem = URLQueryItem(name: "outStatistics", value: "[{\"statisticType\":\"MAX\",\"onStatisticField\":\"last_update\",\"outStatisticFieldName\":\"last_update\"}]")
    private lazy var qParam_outSR: URLQueryItem = URLQueryItem(name: "outSR", value: String(4326))
    private lazy var qParam_form: URLQueryItem = URLQueryItem(name: "f", value: "json")
    private lazy var qParam_returnGeometry: URLQueryItem = URLQueryItem(name: "returnGeometry", value: String(false))
    
    
    func getURLAddress() -> String {
        return urlAddress
    }
    
    
    func buildParametersForRequest() -> [URLQueryItem] {
        Logger.funcStart.notice("buildParametersForRequest")
        
        var qItems: [URLQueryItem] = [URLQueryItem]()
        
        qItems.append(self.qParam_where_all)
        qItems.append(self.qParam_outfields)
        qItems.append(self.qParam_outStatistics)
        qItems.append(self.qParam_outSR)
        qItems.append(self.qParam_form)
        qItems.append(self.qParam_returnGeometry)
        
        return qItems
    }
    
    
    public func getDataAwait() -> DTAI.DateTime1000 {
        Logger.funcStart.notice("getDataAwait")
        
        var result: DTAI.DateTime1000 = 0
        
        if let request = ServerRequestHelpers.buildRequest(self) {
            if let jSONResult = ServerRequestHelpers.doRequestAwait(request) {
                
                let ccLatest = self.mapJsonRespondObjectToSQLLiteObjects_Casese(jsonObject: jSONResult)
                // UserStorageProvider.share.AppendItem("Server response: " + ccLatest.last_update)
                result = ccLatest.datetime1000
            }
        }
        return result
    }

    
    private func mapJsonRespondObjectToSQLLiteObjects_Casese(jsonObject: JSONObject) -> CovidCase_Latest {
        Logger.funcStart.notice("mapJsonRespondObjectToSQLLiteObjects_Casese")
        
        var item = CovidCase_Latest()
        
        let _ = ServerRequestHelpers.printJsonDebug(jsonObject: jsonObject)
        
        if let features = jsonObject["features"] as? [Any] {  // "features" are the result itemS
            
            for feature in features {
                if let feature = feature as? NSDictionary {
                    if let attributes = feature["attributes"] as? NSDictionary {
                        
                        item.last_update = attributes["last_update"] as? String ?? ""
                        
                        let dt1000: DTAI = DTAI(dateStringFromCovidServer_DE: item.last_update)
                        if dt1000.parseError == true {
                            Logger.log.error("Parse error for last_update = '\(item.last_update, privacy: .public)'. No insert!")
                            continue
                        }
                        item.datetime1000 = dt1000.dateTimeAsInteger
                        
                    }
                }
            }
        }
        return item
    }

}
