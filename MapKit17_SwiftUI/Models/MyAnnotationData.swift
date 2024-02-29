//
//  MyAnnotationData.swift
//  MapKit17_SwiftUI
//
//  Created by Nourhene Krichene on 29/02/2024.
//

import Foundation
import CoreLocation

struct MyMapAnnotation: Identifiable {
    var id = UUID()
    var name: String
    var coordinates: CLLocationCoordinate2D
    
    static var citiesToVisit: [MyMapAnnotation] {
        return [
            MyMapAnnotation(name: "Londres",
                            coordinates: CLLocationCoordinate2D(latitude: 51.507, longitude: 0)),
            MyMapAnnotation(name: "Manchester",
                            coordinates: CLLocationCoordinate2D(latitude: 53.48, longitude: -2.23)),
            MyMapAnnotation(name: "Amsterdam",
                            coordinates: CLLocationCoordinate2D(latitude: 52.37, longitude: 4.89)),
            MyMapAnnotation(name: "Berlin",
                            coordinates: CLLocationCoordinate2D(latitude: 52.52, longitude: 13.37)),
            MyMapAnnotation(name: "Munich",
                            coordinates: CLLocationCoordinate2D(latitude: 48.14, longitude: 11.57)),
            MyMapAnnotation(name: "Paris",
                            coordinates: CLLocationCoordinate2D(latitude: 48.86, longitude: 2.301)),
            MyMapAnnotation(name: "Lyon",
                            coordinates: CLLocationCoordinate2D(latitude: 45.744, longitude: 4.84)),
            MyMapAnnotation(name: "Marseille",
                            coordinates: CLLocationCoordinate2D(latitude: 43.301, longitude: 5.374)),
            MyMapAnnotation(name: "Milan",
                            coordinates: CLLocationCoordinate2D(latitude: 45.465, longitude: 9.192)),
            MyMapAnnotation(name: "Rome",
                            coordinates: CLLocationCoordinate2D(latitude: 41.900, longitude: 12.487)),
            MyMapAnnotation(name: "Madrid",
                            coordinates: CLLocationCoordinate2D(latitude: 40.427, longitude: -3.70)),
            MyMapAnnotation(name: "Barcelone",
                            coordinates: CLLocationCoordinate2D(latitude: 41.383, longitude: 2.176)),
            MyMapAnnotation(name: "Lisbonne",
                            coordinates: CLLocationCoordinate2D(latitude: 38.715, longitude: -9.138)),
            MyMapAnnotation(name: "Prague",
                            coordinates: CLLocationCoordinate2D(latitude: 50.089, longitude: 14.42)),
            MyMapAnnotation(name: "Vienne",
                            coordinates: CLLocationCoordinate2D(latitude: 48.209, longitude: 16.36)),
            MyMapAnnotation(name: "Athenes",
                            coordinates: CLLocationCoordinate2D(latitude: 37.973, longitude: 23.725)),
            MyMapAnnotation(name: "Varsovie",
                            coordinates: CLLocationCoordinate2D(latitude: 52.252, longitude: 21.014)),
            MyMapAnnotation(name: "Oslo",
                            coordinates: CLLocationCoordinate2D(latitude: 59.921, longitude: 10.751)),
            MyMapAnnotation(name: "Copenhague",
                            coordinates: CLLocationCoordinate2D(latitude: 55.693, longitude: 12.5766)),
            MyMapAnnotation(name: "Helsinki",
                            coordinates: CLLocationCoordinate2D(latitude: 60.182, longitude: 24.937)),
        ]
    }
}
