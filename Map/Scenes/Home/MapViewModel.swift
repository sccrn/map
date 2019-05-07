//
//  MapViewModel.swift
//  Map
//
//  Created by Guarana on 2019-05-05.
//  Copyright © 2019 maptest. All rights reserved.
//

import Foundation

enum MapState {
    case success, fail
}

protocol MapDelegate: class {
    func didEndAction(state: MapState, error: String?)
}

class MapViewModel {
    weak var delegate: MapDelegate?
    private var feeds: [Feed] = []
    
    func getAllFeeds() {
        FeedManager().fetchAllFeeds() { result in
            switch result {
            case .success(let feeds):
                self.feeds = feeds
                self.delegate?.didEndAction(state: .success, error: nil)
            case .failure(let error):
                self.delegate?.didEndAction(state: .fail, error: error.localizedDescription)
            }
        }
    }
}
