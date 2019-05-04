//
//  MapNavigationBar.swift
//  Map
//
//  Created by Guarana on 2019-05-03.
//  Copyright © 2019 maptest. All rights reserved.
//

import UIKit

///Our navigationBar's customized
class MapNavigationBar: UINavigationBar {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupAppNavigationBar() {
        shadowImage = UIImage()
        barTintColor = UIColor.navigationController
        titleTextAttributes = [.foregroundColor: UIColor.fontColor]
    }
}