//
//  GetCovidBaseDataFromServer.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 11.11.20.
//

import Foundation
import os.log


class GetCovidBaseDataFromServer: NSObject, GetFromServer {

    private var urlAddress: String { return "https://services7.arcgis.com/mOBPykOjAyBO2ZKk/arcgis/rest/services/RKI_Landkreisdaten/FeatureServer/0/query" }
    
    private lazy var qParam_where_all: URLQueryItem = URLQueryItem(name: "where", value: "1=1")
    private lazy var qParam_countiesfields: URLQueryItem = URLQueryItem(name: "outFields", value: "BEZ,GEN")
    private lazy var qParam_casesfields: URLQueryItem = URLQueryItem(name: "outFields", value: "OBJECTID,BL,BL_ID,BEZ,IBZ,GEN,COUNTY,last_update,cases7_per_100k,EWZ,cases,cases_per_100k,RS,deaths")
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
        qItems.append(self.qParam_casesfields)
        qItems.append(self.qParam_outSR)
        qItems.append(self.qParam_form)
        qItems.append(self.qParam_returnGeometry)
        
        return qItems
    }
    
    
    public func getDataAwait() -> CovidCaseS {
        Logger.funcStart.notice("*** GetCovidBaseDataFromServer: getDataAwait")
        
        var result = CovidCaseS()
        
        if let request = ServerRequestHelpers.buildRequest(self) {
            if let jSONResult = ServerRequestHelpers.doRequestAwait(request) {
                
                result = self.mapJsonRespondObjectToSQLLiteObjects_Casese(jsonObject: jSONResult)
                // UserStorageProvider.share.AppendItem("Got baseitems. Count = \(result.count)")
                Logger.data.notice("Got baseitems. Count = \(result.count, privacy: .public)")
            }
        }
        return result
    }
    
    
    private func mapJsonRespondObjectToSQLLiteObjects_Casese(jsonObject: JSONObject) -> CovidCaseS {
        Logger.funcStart.notice("mapJsonRespondObjectToSQLLiteObjects_Casese")
        
        var items = CovidCaseS()
        
        let _ = ServerRequestHelpers.printJsonDebug(jsonObject: jsonObject)
        
        if let features = jsonObject["features"] as? [Any] {  // "features" are the result itemS
            
            for feature in features {
                if let feature = feature as? NSDictionary {
                    if let attributes = feature["attributes"] as? NSDictionary {
                        var item = CovidCase()
                        item.id = 0
                        item.OBJECTID = attributes["OBJECTID"] as? Int64 ?? 0
                        item.GEN = attributes["GEN"] as? String ?? ""
                        item.BEZ = attributes["BEZ"] as? String ?? ""
                        item.BL = attributes["BL"] as? String ?? ""
                        item.EWZ = attributes["EWZ"] as? Int64 ?? 0
                        item.cases = attributes["cases"] as? Int64 ?? 0
                        item.cases_per_100k = attributes["cases_per_100k"] as? Double ?? 0
                        item.cases7_per_100k = attributes["cases7_per_100k"] as? Double ?? 0
                        item.last_update = attributes["last_update"] as? String ?? ""
                        item.idLandkreis = attributes["RS"] as? String ?? ""
                        item.deaths = attributes["deaths"] as? Int64 ?? 0
                        
                        
                        let dt1000: DTAI = DTAI(dateStringFromCovidServer_DE: item.last_update)
                        if dt1000.parseError == true {
                            Logger.log.error("Parse error for last_update = '\(item.last_update, privacy: .public)'. No insert!")
                            continue
                        }
                        item.datetime1000 = dt1000.dateTimeAsInteger
                        item.date1000 = dt1000.datePartAsInteger
                        
                        if item.idLandkreis.isEmpty {
                            Logger.log.error("IdLandkreis(RS) is empty for GEN = '\(item.GEN, privacy: .public)' and BEZ = '\(item.BEZ, privacy: .public)'. No insert!")
                            continue
                        }
                        
                        item.dupprevent = (ServerRequestHelpers.CreateDuppreventField(idLandkreis: item.idLandkreis, last_update: item.datetime1000))
                                
                                
                        // Insert the Item
                        items.append(item)
                        
                    }
                }
            }
        }
        return items
    }
}
