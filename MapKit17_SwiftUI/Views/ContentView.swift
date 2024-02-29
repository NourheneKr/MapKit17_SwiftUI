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
    var datas: [MyMapAnnotation] = MyMapAnnotation.citiesToVisit
    
    var body: some View {
        NavigationStack {
            //SimpleMapView(mapPosition: .constant(mapManager.mapCameraPosition))
            
            // display Markers and annotations
            Map(
                position: .constant(mapManager.mapCameraPosition),
                interactionModes: .all
                
            ) {
                ForEach(datas) { item in
                    if item.name == "Paris" {
                        Annotation(item.name,
                                   coordinate: item.coordinates, anchor: .bottom) {
                            /*VStack {
                             Text("here PARIS!")
                             Image(systemName: "staroflife.circle")
                             }
                             .foregroundStyle(.blue)
                             .padding()
                             .background(in: .capsule)
                             */
                            Image(systemName: "mappin")
                                .onTapGesture {
                                    print(">> tapped child")
                                }
                        }
                        
                    } else {
                        Marker(item.name, coordinate: item.coordinates)
                        /*Marker(item.name,
                         systemImage: "star", coordinate: item.coordinates)
                         .tint(.green)*/
                    }
                }
            }
            .edgesIgnoringSafeArea(.bottom)
            .navigationTitle(mapManager.cityName ?? "Cartes")
        }
    }
}
