//
//  ContentView.swift
//  superKahramanKatalogu
//
//  Created by Sueda Beyza Özcan on 8.08.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack{
                Text("Super Kahraman Kataloğu")
                    .font(.system(size: 27)) // Font boyutunu burada ayarlayın
                    .bold()
                
                List(superKahramanDizisi) { superKahraman in NavigationLink(destination: DetayView(secilenKahraman: superKahraman),label: {ListeRowView(superkahraman: superKahraman) })
                }
            }
            .navigationBarTitleDisplayMode(.automatic)
        }
    }
}

#Preview {
    ContentView()
}
