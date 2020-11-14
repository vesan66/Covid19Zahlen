//
//  GetCovidNewDataFromServer.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 12.11.20.
//

import Foundation
import os.log


class GetCovidNewDataFromServer: NSObject, GetFromServer {

    typealias NewCaseS = [String : CovidCase_NewCases]
    
    var urlAddress: String { return "https://services7.arcgis.com/mOBPykOjAyBO2ZKk/arcgis/rest/services/RKI_COVID19/FeatureServer/0/query" }
        
    private lazy var qParam_where: URLQueryItem = URLQueryItem(name: "where", value: "NeuerFall=1 OR NeuerFall=-1")
    private lazy var qParam_outFields: URLQueryItem = URLQueryItem(name: "outFields", value: "IdLandkreis,NeuerFall")
    private lazy var qParam_outStatistics: URLQueryItem = URLQueryItem(name: "outStatistics", value: "[{\"statisticType\":\"SUM\",\"onStatisticField\":\"AnzahlFall\",\"outStatisticFieldName\":\"AnzahlNeueFaelle\"},{\"statisticType\":\"MAX\",\"onStatisticField\":\"Datenstand\",\"outStatisticFieldName\":\"last_update\"}]")
    private lazy var qParam_groupByFieldsForStatistics: URLQueryItem = URLQueryItem(name: "groupByFieldsForStatistics", value: "IdLandkreis,NeuerFall")
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
    
    
    public func getDataAwait() -> NewCaseS {
        Logger.funcStart.notice("*** GetCovidNewDataFromServer: getDataAwait")
        
        var result = NewCaseS()
        
        if let request = ServerRequestHelpers.buildRequest(self) {
            if let jSONResult = ServerRequestHelpers.doRequestAwait(request) {
                
                result = self.mapJsonRespondObjectToSQLLiteObjects_Casese(jsonObject: jSONResult)
                // UserStorageProvider.share.AppendItem("Got newcases items. Count = \(result.count)")
                Logger.data.notice("Got newcases items. Count = \(result.count, privacy: .public)")
            }
        }
        return result
    }
    
    
    private func mapJsonRespondObjectToSQLLiteObjects_Casese(jsonObject: JSONObject) -> NewCaseS {
        Logger.funcStart.notice("GetCovidNewDataFromServer.mapJsonRespondObjectToSQLLiteObjects_Casese")
        
        var items = NewCaseS()
        var item: CovidCase_NewCases
        var idLandkreis: String
        var cases: Int64
        var NeuerFall: Int64
        var last_update: String
        
        let _ = ServerRequestHelpers.printJsonDebug(jsonObject: jsonObject)
        
        if let features = jsonObject["features"] as? [Any] {  // "features" are the result itemS
            
            for feature in features {
                if let feature = feature as? NSDictionary {
                    if let attributes = feature["attributes"] as? NSDictionary {
                        idLandkreis = attributes["IdLandkreis"] as? String ?? ""
                        if idLandkreis.isEmpty {
                            Logger.log.error("IdLandkreis(RS) is empty. No insert!")
                            continue
                        }
                        last_update = attributes["last_update"] as? String ?? ""
                        let dt1000: DTAI = DTAI(dateStringFromCovidServer_DE: last_update)
                        if dt1000.parseError == true {
                            print()
                            Logger.log.error("Parse error for last_update = '\(last_update, privacy: .public)'. No insert!")
                            continue
                        }
                        if items[idLandkreis] != nil {
                            item = items[idLandkreis]!
                            if item.datetime1000 != dt1000.dateTimeAsInteger {
                                Logger.log.error("Last_update does not match = '\(last_update, privacy: .public)'. No insert!")
                                continue
                            }
                        } else {
                            item = CovidCase_NewCases()
                            item.last_update = last_update
                            item.idLandkreis = idLandkreis
                            item.datetime1000 = dt1000.dateTimeAsInteger
                            
                            // Insert the Item
                            items[item.idLandkreis]=item
                        }
                        
                        NeuerFall = attributes["NeuerFall"] as? Int64 ?? 0
                        cases = attributes["AnzahlNeueFaelle"] as? Int64 ?? 0
                        if NeuerFall == -1 {
                            //Logger.log.notice("Decrement of incidents.")
                        }
                        
                        items[item.idLandkreis]!.newCases = items[item.idLandkreis]!.newCases + cases
                            
                    }
                }
            }
        }
        return items
    }
}
