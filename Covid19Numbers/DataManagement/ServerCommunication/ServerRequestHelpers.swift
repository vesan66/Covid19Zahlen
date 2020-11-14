//
//  ServerRequestHelpers.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 11.11.20.
//

import Foundation
import os.log


public final class ServerRequestHelpers: NSObject {
    
    override private init() {}
    
    public static func printJsonDebug(jsonObject: JSONObject?) {
        guard let prettyJsonData = try? JSONSerialization.data(withJSONObject: jsonObject!, options: .prettyPrinted) else {
            Logger.log.error("Error: Cannot convert JSON object to Pretty JSON data")
            return
        }
        guard let prettyPrintedJson = String(data: prettyJsonData, encoding: .utf8) else {
            Logger.log.error("Error: Could print JSON in String")
            return
        }
        if fullJasonPrint == true {
            print("Result: ", prettyPrintedJson)
        } else {
            Logger.log.notice("JSON received: '\(prettyPrintedJson.prefix(33), privacy: .public) ...'")
        }
    }
    
    
    public static func doRequestAwait(_ request: URLRequest) -> JSONObject? {
        Logger.funcStart.notice("doRequestAwait")
        
        var jSONResult: JSONObject?
        let requestSession = RequestSession()
        if requestSession.StartTaskAndWait(request) {
            jSONResult = requestSession.jsonObjectResult
        }
        return jSONResult
    }
    
    
    public static func buildRequest(_ getObject: GetFromServer) -> URLRequest? {
        Logger.funcStart.notice("buildRequest")
        
        guard var urlComponents = URLComponents(string: getObject.getURLAddress()) else {
            Logger.log.error("Error: cannot create URLCompontents")
            return nil
        }
        urlComponents.queryItems = getObject.buildParametersForRequest()
        
        guard let url = urlComponents.url else {
            Logger.log.error("Error: cannot create URL")
            return nil
        }
        Logger.data.notice("Request created: \(url.absoluteString, privacy: .public )")
        
        // Create the url request
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        return request
    }
    
    
    public static func CreateDuppreventField(idLandkreis: String, last_update: Int64) -> String {
        return ("#" + String(idLandkreis) + "#" + String(last_update) + "#")
    }
    
    
    public static func TranslateLastUpdateToInt64(dateString: String) -> Int64 {
        return DTAI(dateStringFromCovidServer_DE: dateString).dateTimeAsInteger
    }
}
