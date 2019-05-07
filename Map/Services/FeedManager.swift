//
//  FeedManager.swift
//  Map
//
//  Created by Guarana on 2019-05-05.
//  Copyright © 2019 maptest. All rights reserved.
//

import Foundation
import Alamofire

///Our manager will call the specific request that we need, with all the necessary information.
///In this example, we only have one type, but this way if we had more HTTPMethods, we wouldn't need to repeat code.
class FeedManager {
    //We're using the Result in Swift, cause it's best to know exactly what we're gonna receive in the response
    ///since the error(failure) or success(success).
    func fetchAllFeeds(_ completion: @escaping (Result<Response>) -> Void)  {
       AF.request(APIManager.feeds)
        .responseDecodable { (response: DataResponse<Response>) in
            completion(response.result)
        }
    }
}
