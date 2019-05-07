//
//  BaseController.swift
//  Map
//
//  Created by Guarana on 2019-05-07.
//  Copyright © 2019 maptest. All rights reserved.
//

import Foundation
import UIKit

class BaseController: UIViewController {
    public init() { super.init(nibName: nil, bundle: nil) }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
    override public var preferredStatusBarStyle: UIStatusBarStyle {
        return .default
    }
}
