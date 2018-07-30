//
//  MapVC.swift
//  pixel-city
//
//  Created by Pieter Kuijsten on 30/07/2018.
//  Copyright © 2018 Pieter Kuijsten. All rights reserved.
//

import UIKit
import MapKit

class MapVC: UIViewController {
    
    
    @IBOutlet weak var mapView: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
        
    }
    
    
    @IBOutlet weak var centerMapBtnWasPressed: UIButton!
    
    
}



extension MapVC: MKMapViewDelegate {
    
}
