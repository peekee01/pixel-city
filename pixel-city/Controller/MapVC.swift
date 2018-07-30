//
//  MapVC.swift
//  pixel-city
//
//  Created by Pieter Kuijsten on 30/07/2018.
//  Copyright © 2018 Pieter Kuijsten. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MapVC: UIViewController {
    
    //Variables - constants
    @IBOutlet weak var mapView: MKMapView!
    var locationManager = CLLocationManager()
    let authorizationStatus = CLLocationManager.authorizationStatus()
    let regionRadius: Double = 1000
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
        locationManager.delegate = self
        configureLocationServices()
        
        mapView.showsUserLocation = true
        
        
    }
    
    
    @IBAction func centerBtnPressed(_ sender: Any) {
        if authorizationStatus == .authorizedAlways || authorizationStatus == .authorizedWhenInUse {
            centerMapOnUserLocation()
        }
    }
    
}
    
    
    extension MapVC: MKMapViewDelegate {
        func centerMapOnUserLocation() {
            guard let coordinate = locationManager.location?.coordinate else { return }
            let coordinateRegion = MKCoordinateRegionMakeWithDistance(coordinate, regionRadius * 2, regionRadius * 2)
            mapView.setRegion(coordinateRegion, animated: true)
        }
    }
    
    extension MapVC: CLLocationManagerDelegate {
        func configureLocationServices() {
            if authorizationStatus == .notDetermined {
                locationManager.requestAlwaysAuthorization()
            } else {
                return
            }
        }
        
        func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
            centerMapOnUserLocation()
        }
        
}
