//
//  MapController.swift
//  Map
//
//  Created by Guarana on 2019-05-05.
//  Copyright © 2019 maptest. All rights reserved.
//

import Foundation
import UIKit
import MapKit

class MapController: BaseController {
    @IBOutlet weak var mapView: MKMapView!
    private var viewModel: MapViewModel
    private let locationManager = CLLocationManager()
    
    public init(viewModel: MapViewModel) {
        self.viewModel = viewModel
        super.init()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
    ///In our viewDidLoad we're gonna register our custom MKAnnotationView and that's why we don't need the map's delegate.
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.register(PinView.self, forAnnotationViewWithReuseIdentifier: MKMapViewDefaultAnnotationViewReuseIdentifier)
        loadLocation()
        loadLayout()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        loadNavBar()
    }

    func loadLocation() {
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.delegate = self
        locationManager.startUpdatingLocation()
    }
    
    private func loadNavBar() {
        navigationController?.setNavigationBarHidden(false, animated: false)
        navigationItem.title = Constants.screenTitle
    }
    
    private func loadLayout() {
        viewModel.delegate = self
        viewModel.getAllFeeds()
    }
}

extension MapController: MapDelegate {
    func didEndAction(state: MapState, error: String?, feed: [Feed]) {
        switch state {
        case .success:
            setupAnnotations(feeds: feed)
        case .fail: break
        }
    }
    
    private func setupAnnotations(feeds: [Feed]) {
        var annotations: [MKAnnotation] = []
        for feed in feeds {
            let pin = PinModel(feed: feed)
            annotations.append(pin)
        }
        mapView.addAnnotations(annotations)
    }
}

///This is where we're gonna get the user's location and set our map's zoom
extension MapController: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        self.locationManager.stopUpdatingLocation()
        let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: locations[0].coordinate.latitude,
                                                                       longitude: locations[0].coordinate.longitude),
                                        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
        mapView.setRegion(region, animated: true)
    }
}
