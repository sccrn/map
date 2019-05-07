//
//  MapNavigationController.swift
//  Map
//
//  Created by Guarana on 2019-05-03.
//  Copyright © 2019 maptest. All rights reserved.
//

import UIKit

///This is the app's navigationController and in here it's gonna customized.
class MapNavigationController: UINavigationController {
    
    //Our navigationBar will be the navigationBar of our navigationController that will be customized in
    //this init.
    convenience init(rootController: UIViewController? = nil) {
        self.init(navigationBarClass: MapNavigationBar.self, toolbarClass: nil)
        
        if let rootViewController = rootController { viewControllers = [rootViewController] }
        navigationBar.isTranslucent = false
    }
}
