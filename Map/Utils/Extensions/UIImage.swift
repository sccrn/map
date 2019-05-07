//
//  UIImage.swift
//  Map
//
//  Created by Guarana on 2019-05-07.
//  Copyright © 2019 maptest. All rights reserved.
//

import Foundation
import UIKit

///This is how we're gonna change our image's color. So we don't need a lot of same images just with differents colors.
extension UIImage {
    
    func tint(with color: UIColor) -> UIImage {
        var image = withRenderingMode(.alwaysTemplate)
        UIGraphicsBeginImageContextWithOptions(size, false, scale)
        color.set()
        
        image.draw(in: CGRect(origin: .zero, size: size))
        image = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return image
    }
}
