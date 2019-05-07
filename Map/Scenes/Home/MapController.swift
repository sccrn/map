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
    
    public init(viewModel: MapViewModel) {
        self.viewModel = viewModel
        super.init()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
