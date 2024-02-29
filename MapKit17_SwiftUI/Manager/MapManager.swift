//
//  MapManager.swift
//  MapKit17_SwiftUI
//
//  Created by NourheneKr on 29/02/2024.
//

import Foundation
import MapKit
import _MapKit_SwiftUI

class MapManager: NSObject, ObservableObject {
    let locationManager = CLLocationManager()
    let geocoder = CLGeocoder()

    @Published var mapCameraPosition: MapCameraPosition = .region(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 0, longitude: 0), span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)))
    
    @Published var cityName: String?

    var nameCityToFindCoord = "VILLE_HERE"
    override init() {
        super.init()
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        //fromAdresse()
        //fromCoords(latitude: 37.36, longitude: -122.131)
    }
    
    func fromAdresse() {
        geocoder.geocodeAddressString(nameCityToFindCoord) { places, error in
            self.completion(places, error)
        }
    }
    
    func fromCoords(latitude: Double, longitude: Double) {
        geocoder.reverseGeocodeLocation(CLLocation(latitude: latitude, longitude: longitude)) { places, error in
            self.completion(places, error)
        }
    }
    
    func completion(_ places: [CLPlacemark]?, _ error: Error?) {
        places?.forEach({ place in
            print("adresse: \(place.locality ?? "") ville \n\(place.country ?? "") le pays \n \(String(describing: place.location)) coordonnées")
            DispatchQueue.main.async {
                self.cityName = place.locality
            }
        })

    }
    
}

extension MapManager: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        DispatchQueue.main.async {
            if let location = locations.first {
                let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
                let center = location.coordinate
                self.mapRegion = .region(MKCoordinateRegion(center: center, span: span))
                self.fromCoords(latitude: center.latitude, longitude: center.longitude)
            }
        }
    }
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        switch manager.authorizationStatus {
        case .authorizedWhenInUse: manager.requestLocation()
        case .authorizedAlways: manager.requestLocation()
        case .denied: print("Authorization refused")
        case .notDetermined: print("Authorization not determined")
        case .restricted: print("Authorization restricted")
            
        default: print("Authorization unknown")
        }

    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("locationManager ERROR", error.localizedDescription)
    }
    
}
