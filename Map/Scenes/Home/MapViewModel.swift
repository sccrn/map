//
//  MapViewModel.swift
//  Map
//
//  Created by Guarana on 2019-05-05.
//  Copyright © 2019 maptest. All rights reserved.
//

import Foundation
import UIKit


enum MapState {
    case success, fail
}

protocol MapDelegate: class {
    func didEndAction(state: MapState, error: String?, feed: [Feed])
}

///This class will be calling our manager to fetch all informations that we're gonna need to our screen.
class MapViewModel {
    weak var delegate: MapDelegate?

    func getAllFeeds() {
        FeedManager().fetchAllFeeds() { result in
            switch result {
            case .success(let response):
                self.delegate?.didEndAction(state: .success, error: nil, feed: response.feeds)
            case .failure(let error):
                self.delegate?.didEndAction(state: .fail, error: error.localizedDescription, feed: [])
            }
        }
    }
}
