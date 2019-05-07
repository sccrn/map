//
//  PinView.swift
//  Map
//
//  Created by Guarana on 2019-05-07.
//  Copyright © 2019 maptest. All rights reserved.
//

import Foundation
import MapKit

///Our custom MKAnnotationView. This is where the pin will be configured with our image and the specific color.
class PinView: MKAnnotationView {
    override var annotation: MKAnnotation? {
        didSet {
            guard let pin = annotation as? PinModel else {return}
            canShowCallout = true
            calloutOffset = CGPoint(x: -5, y: 5)
            rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
            
            if let imageName = pin.imageName {
                image = UIImage(named: imageName)?.withRenderingMode(.alwaysTemplate)
                image = image?.tint(with: pin.country.color())
            }
        }
    }
}
