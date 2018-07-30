//
//  DroppablePin.swift
//  pixel-city
//
//  Created by Pieter Kuijsten on 30/07/2018.
//  Copyright © 2018 Pieter Kuijsten. All rights reserved.
//

import UIKit
import MapKit

class DroppablePin: NSObject, MKAnnotation {
    
    dynamic var coordinate: CLLocationCoordinate2D
    var identifier: String
    
    init(coordinate: CLLocationCoordinate2D, identifier: String) {
        self.coordinate = coordinate
        self.identifier = identifier
        super.init()
    }
    
}
