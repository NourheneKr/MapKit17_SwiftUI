//
//  SimpleMapView.swift
//  MapKit17_SwiftUI
//
//  Created by Nourhene Krichene on 29/02/2024.
//

import SwiftUI
import MapKit

struct SimpleMapView: View {
    
    @Binding var mapPosition: MapCameraPosition
    
    var body: some View {
        Map(
            position: $mapPosition,
            interactionModes: .all
            
        ) {
            UserAnnotation() // To show the user's position
        }
    }
}
