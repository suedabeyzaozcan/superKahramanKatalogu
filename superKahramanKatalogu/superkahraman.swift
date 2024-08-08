//
//  superkahraman.swift
//  superKahramanKatalogu
//
//  Created by Sueda Beyza Özcan on 8.08.2024.
//

import Foundation
import SwiftUI
import CoreLocation

struct superKahraman : Identifiable{
    var id = UUID()
    var isim : String
    var gorselIsmi : String
    var sehir : String
    var meslek: String
    var koordinat : Koordinat
    var gercekisim: String
    
    var koordinatLokasyonu : CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: koordinat.latitude, longitude: koordinat.longitude)
    }
    
    
    
}

struct Koordinat {
    var latitude : Double
    
    var longitude : Double
}

let batman = superKahraman(isim: "Batman", gorselIsmi: "batman", sehir: "Gotham", meslek: "Bussines Man", koordinat: Koordinat(latitude: 41.8713679, longitude: -87.7669902),gercekisim: "Bruce Wayne")
let spiderman = superKahraman(isim: "Spiderman", gorselIsmi: "spiderman", sehir: "New York", meslek: "Photographer", koordinat: Koordinat(latitude: 40.7160119, longitude: -74.0524729),gercekisim: "Peter Parker")
let superman = superKahraman(isim: "Superman", gorselIsmi: "superman", sehir: "Kansas City", meslek: "Journalist", koordinat: Koordinat(latitude: 39.0865207, longitude: -94.7089592),gercekisim: "Clark Kent")
let ironman = superKahraman(isim: "Ironman", gorselIsmi: "ironman", sehir: "Losangles", meslek: "Mechanic Engineer", koordinat: Koordinat(latitude: 33.8003309, longitude: -118.2261494),gercekisim: "Tony Stark")
let captanamerica = superKahraman(isim: "Captan Amerika", gorselIsmi: "captan_america", sehir: "New York", meslek: "Soldier", koordinat: Koordinat(latitude: 40.7160119, longitude: -74.0524729),gercekisim: "Steve Rogers")

let superKahramanDizisi = [batman,spiderman,superman,ironman,captanamerica]
