//
//  ContentView.swift
//  MapKit17_SwiftUI
//
//  Created by Nourhene Krichene on 29/02/2024.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @ObservedObject var mapManager = MapManager()
    
    var body: some View {
        NavigationStack {
           SimpleMapView(mapPosition: .constant(mapManager.mapCameraPosition))
        }
        .edgesIgnoringSafeArea(.bottom)
        .navigationTitle(mapManager.cityName ?? "Cartes")
    }
}


#Preview {
    ContentView()
}
