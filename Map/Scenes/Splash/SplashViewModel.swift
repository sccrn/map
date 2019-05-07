//
//  SplashViewModel.swift
//  Map
//
//  Created by Guarana on 2019-05-07.
//  Copyright © 2019 maptest. All rights reserved.
//

import Foundation

protocol SplashCoordinatorDelegate: class {
    func didUserLocationAuth(controller: SplashController)
}

class SplashViewModel {
    weak var coordinatorDelegate: SplashCoordinatorDelegate?
    
    init(coordinatorDelegate: SplashCoordinatorDelegate) {
        self.coordinatorDelegate = coordinatorDelegate
    }
}
