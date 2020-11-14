//
//  GetFromServer.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 12.11.20.
//

import Foundation

public typealias JSONObject = [String : Any]

public protocol GetFromServer: NSObject {
    func getURLAddress() -> String
    func buildParametersForRequest() -> [URLQueryItem]
}
