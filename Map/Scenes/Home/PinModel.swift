//
//  PinModel.swift
//  Map
//
//  Created by Guarana on 2019-05-07.
//  Copyright © 2019 maptest. All rights reserved.
//

import Foundation
import MapKit

///Our Pin with all informations that we need to create him.
class PinModel: NSObject, MKAnnotation {
    let title: String?
    let city: String
    let coordinate: CLLocationCoordinate2D
    let country: Country
    
    init(feed: Feed) {
        self.title = feed.name
        self.city = feed.location
        self.country = feed.country
        self.coordinate = CLLocationCoordinate2D(latitude: feed.bounds.min_lat,
                                                 longitude: feed.bounds.min_lon)
        super.init()
    }
    
    var imageName: String? {
        return "pin"
    }
    
    var subtitle: String? {
        return city
    }
}
