//
//  RootCoordinator.swift
//  Map
//
//  Created by Guarana on 2019-05-02.
//  Copyright © 2019 maptest. All rights reserved.
//

import Foundation
import UIKit

public protocol RootControllerProvider: class {
    //This rootViewController is the root of the coordinators.
    //It can be used to dismiss the coordinator from the view hierarchy.
    var rootViewController: UIViewController { get }
}

///The typealias is been implemented to use this RootCoordinator to provides a root UIViewController
public typealias RootCoordinator = Coordinator & RootControllerProvider
