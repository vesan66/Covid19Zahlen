//
//  GetCovidRecoveredDataFromServer.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 12.11.20.
//

import Foundation
import os.log


class GetCovidRecoveredDataFromServer: NSObject, GetFromServer {
    
    typealias RecoveredCaseS = [String : CovidCase_Recovered]
    
    var urlAddress: String { return "https://services7.arcgis.com/mOBPykOjAyBO2ZKk/arcgis/rest/services/RKI_COVID19/FeatureServer/0/query" }
        
    private lazy var qParam_where: URLQueryItem = URLQueryItem(name: "where", value: "1=1")
    private lazy var qParam_outFields: URLQueryItem = URLQueryItem(name: "outFields", value: "IdLandkreis")
    private lazy var qParam_outStatistics: URLQueryItem = URLQueryItem(name: "outStatistics", value: "[{\"statisticType\":\"SUM\",\"onStatisticField\":\"AnzahlGenesen\",\"outStatisticFieldName\":\"sumGenesene\"},{\"statisticType\":\"MAX\",\"onStatisticField\":\"Datenstand\",\"outStatisticFieldName\":\"last_update\"}]")
    private lazy var qParam_groupByFieldsForStatistics: URLQueryItem = URLQueryItem(name: "groupByFieldsForStatistics", value: "IdLandkreis")
    private lazy var qParam_outSR: URLQueryItem = URLQueryItem(name: "outSR", value: String(4326))
    private lazy var qParam_form: URLQueryItem = URLQueryItem(name: "f", value: "json")
    private lazy var qParam_returnGeometry: URLQueryItem = URLQueryItem(name: "returnGeometry", value: String(false))
    

    func getURLAddress() -> String {
        return urlAddress
    }
    
    
    func buildParametersForRequest() -> [URLQueryItem] {
        Logger.funcStart.notice("buildParametersForRequest")
        
        var qItems: [URLQueryItem] = [URLQueryItem]()
        
        qItems.append(self.qParam_where)
        qItems.append(self.qParam_outFields)
        qItems.append(self.qParam_outSR)
        qItems.append(self.qParam_form)
        qItems.append(self.qParam_outStatistics)
        qItems.append(self.qParam_groupByFieldsForStatistics)
        qItems.append(self.qParam_returnGeometry)
        
        return qItems
    }
    
    
    public func getDataAwait() -> RecoveredCaseS {
        Logger.funcStart.notice("*** GetCovidRecoveredDataFromServer: getDataAwait")
        
        var result = RecoveredCaseS()
        
        if let request = ServerRequestHelpers.buildRequest(self) {
            if let jSONResult = ServerRequestHelpers.doRequestAwait(request) {
                
                result = self.mapJsonRespondObjectToSQLLiteObjects_Casese(jsonObject: jSONResult)
                // UserStorageProvider.share.AppendItem("Got recovered items. Count = \(result.count)")
                Logger.data.notice("Got recovered items. Count = \(result.count, privacy: .public)")
            }
        }
        return result
    }
    
    
    private func mapJsonRespondObjectToSQLLiteObjects_Casese(jsonObject: JSONObject) -> RecoveredCaseS {
        Logger.funcStart.notice("GetCovidRecoveredDataFromServer.mapJsonRespondObjectToSQLLiteObjects_Casese")
        
        var items = RecoveredCaseS()
        
        let _ = ServerRequestHelpers.printJsonDebug(jsonObject: jsonObject)
        
        if let features = jsonObject["features"] as? [Any] {  // "features" are the result itemS
            
            for feature in features {
                if let feature = feature as? NSDictionary {
                    if let attributes = feature["attributes"] as? NSDictionary {
                        var item = CovidCase_Recovered()
                        item.last_update = attributes["last_update"] as? String ?? ""
                        item.idLandkreis = attributes["IdLandkreis"] as? String ?? ""
                        item.genesen = attributes["sumGenesene"] as? Int64 ?? 0
                        
                        if item.idLandkreis.isEmpty {
                            Logger.log.error("IdLandkreis(RS) is empty. No insert!")
                            continue
                        }
                        
                        let dt1000: DTAI = DTAI(dateStringFromCovidServer_DE: item.last_update)
                        if dt1000.parseError == true {
                            Logger.log.error("Parse error for last_update = '\(item.last_update, privacy: .public)'. No insert!")
                            continue
                        }
                        item.datetime1000 = dt1000.dateTimeAsInteger

                        // Insert the Item
                        items[item.idLandkreis]=item
                        
                    }
                }
            }
        }
        return items
    }
}
