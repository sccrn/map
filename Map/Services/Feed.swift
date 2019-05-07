//
//  Feed.swift
//  Map
//
//  Created by Samanta on 2019-05-05.
//  Copyright © 2019 maptest. All rights reserved.
//

import Foundation
import UIKit

///This enum will give us the opportunity to set up our pin's color.
enum Country: String {
    case DE
    case US
    case CA
    case GB
    case FR
    case other
    
    func color() -> UIColor {
        switch self {
        case .CA: return .canadaCountry
        case .DE: return .germanyCountry
        case .US: return .unitedStateCountry
        case .GB: return .unitedKingdomContry
        case .FR: return .franceContry
        case .other: return .otherCountry
        }
    }
}

struct Response: Codable {
    let feeds: [Feed]
}

struct Feed: Codable {
    let id: Double
    let name: String
    let code: String
    let feed_network_name: String?
    let timezone: String
    let bounds: Bounds
    let bgtfs_uploaded_at: String
    let location: String
    var country_code: String
    let bgtfs_hash: String

    var country: Country {
        get { return Country(rawValue: country_code) ?? .other }
        set { self.country_code = newValue.rawValue }
    }
}

struct Bounds: Codable {
    let min_lat: Double
    let max_lat: Double
    let min_lon: Double
    let max_lon: Double
}
