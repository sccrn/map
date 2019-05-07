//
//  APIManager.swift
//  Map
//
//  Created by Guarana on 2019-05-07.
//  Copyright © 2019 maptest. All rights reserved.
//

import Foundation
import Alamofire

///This is the enum that we're gonna use to not repeat code in our requests.
enum APIManager: URLRequestConvertible {
    case feeds
    
    private var method: HTTPMethod {
        switch self {
        case .feeds: return .get
        }
    }
    
    private var parameters: Parameters? {
        switch self {
        case .feeds: return nil
        }
    }
    
    ///Here, we will get from this function our urlRequest exactly the type that we need.
    func asURLRequest() throws -> URLRequest {
        let url = try Constants.baseURL.asURL()
        var urlRequest = URLRequest(url: url)
        
        urlRequest.httpMethod = method.rawValue
        
        urlRequest.setValue(Constants.json, forHTTPHeaderField: Constants.acceptType)
        urlRequest.setValue(Constants.json, forHTTPHeaderField: Constants.contentType)
        
        return urlRequest
    }
}
