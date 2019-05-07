//
//  Feed.swift
//  Map
//
//  Created by Guarana on 2019-05-05.
//  Copyright © 2019 maptest. All rights reserved.
//

import Foundation

struct Feed: Codable {
    let id: Int
    let name: String
    let code: String
    let feed_network_name: String?
    let timezone: String
    let bounds: Bounds
    let bgtfs_uploaded_at: String
    let location: String
    let country_code: String
    let bgtfs_hash: String
}

struct Bounds: Codable {
    let min_lat: Int
    let max_lat: Int
    let min_lon: Int
    let max_lon: Int
}
