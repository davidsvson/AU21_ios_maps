//
//  LocationManager.swift
//  Maps-Intro
//
//  Created by David Svensson on 2022-01-07.
//

import Foundation
import CoreLocation

class LocationManager : NSObject, CLLocationManagerDelegate {
    let manager  = CLLocationManager()
    var location: CLLocationCoordinate2D?
    
    override init() {
        super.init()
        manager.delegate = self
    }
    
    func askForPermission() {
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        location = locations.first?.coordinate
        print("Plats uppdaterad \(location)")
    }
    
}
