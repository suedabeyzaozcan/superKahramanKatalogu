//
//  MapView.swift
//  superKahramanKatalogu
//
//  Created by Sueda Beyza Özcan on 8.08.2024.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable{
    var coordinate : CLLocationCoordinate2D
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
        
    }
    /* @State var region = MKCoordinateRegion(center: SuperkahramanDizisi[0].koordinatLokasyonu, span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))*/
    
    /* var body: some View {
    Map(coordinateRegion: $region)*/
        
    
}

#Preview {
    MapView(coordinate: superKahramanDizisi[0].koordinatLokasyonu)
}
