//
//  AppCoordinator.swift
//  Map
//
//  Created by Guarana on 2019-05-02.
//  Copyright © 2019 maptest. All rights reserved.
//

import Foundation
import UIKit

///This coordinator is the first one and will be the rootViewController
class AppCoordinator: RootCoordinator {
    
    ///These are the RootCoordinator's protocol.
    var childCoordinators: [Coordinator] = []
    var rootViewController: UIViewController { return  navigationController }
    
    ///This is navigation controller and where will be import the navigationController's custom.
    private lazy var navigationController: UINavigationController = {
        let navigationController = MapNavigationController(rootController: nil)
        return navigationController
    }()
    
    ///Window to manage
    let window: UIWindow
    
    ///The initialization of our window.
    public init(window: UIWindow) {
        self.window = window
        self.window.rootViewController = self.rootViewController
        self.window.makeKeyAndVisible()
    }
    
    ///This method is where this coordinator will start
    public func start() {
        
    }
}
