//
//  ViewController.swift
//  wheresmyramen
//
//  Created by Johnny Young on 7/23/18.
//  Copyright © 2018 Johnny Young. All rights reserved.
//

import CoreLocation
import UIKit

class WelcomescreenViewController: UIViewController, CLLocationManagerDelegate {
    
    let locationManager = CLLocationManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.requestWhenInUseAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.startUpdatingLocation()
        locationManager.delegate = self
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations[locations.count - 1 ]
        if location.horizontalAccuracy > 0 {
            locationManager.stopUpdatingLocation()
        }
    }
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Error: \(error)")
    }


}

