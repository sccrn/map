//
//  SplashController.swift
//  Map
//
//  Created by Guarana on 2019-05-07.
//  Copyright © 2019 maptest. All rights reserved.
//

import Foundation
import UIKit
import CoreLocation

class SplashController: BaseController {
    @IBOutlet weak var loading: UIActivityIndicatorView!
    
    private var viewModel: SplashViewModel
    private let locationManager = CLLocationManager()
    
    init(viewModel: SplashViewModel) {
        self.viewModel = viewModel
        super.init()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpSplashScreen()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        loadNavBar()
        setupLocation()
    }
    
    private func loadNavBar() {
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    private func setupLocation() {
        if CLLocationManager.authorizationStatus() != .authorizedWhenInUse {
            self.locationManager.requestWhenInUseAuthorization()
        }
    }
    
    private func setUpSplashScreen() {
        loading.startAnimating()
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2)) {
            self.loading.stopAnimating()
            self.viewModel.coordinatorDelegate?.didUserLocationAuth(controller: self)
        }
    }
}
