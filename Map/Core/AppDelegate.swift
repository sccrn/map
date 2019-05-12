//
//  AppDelegate.swift
//  Map
//
//  Created by Guarana on 2019-05-02.
//  Copyright © 2019 maptest. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var appCoordinator: AppCoordinator!

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        //When the app start we're starting the window in the same frame of Iphone's screen.
        //After that, we're starting our first coordinator and calling his start function
        //to show our first screen.
        window = UIWindow(frame: UIScreen.main.bounds)
        self.appCoordinator = AppCoordinator(window: self.window!)
        self.appCoordinator.start()
        return true
    }
}

