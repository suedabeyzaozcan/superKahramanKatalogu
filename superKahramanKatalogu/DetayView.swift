//
//  DetayView.swift
//  superKahramanKatalogu
//
//  Created by Sueda Beyza Özcan on 8.08.2024.
//

import SwiftUI

struct DetayView: View {
    var secilenKahraman : superKahraman
    
    var body: some View {
        VStack{
            MapView(coordinate: secilenKahraman.koordinatLokasyonu).frame(height: UIScreen.main .bounds.height * 0.3).edgesIgnoringSafeArea(.top)
            //boşluk bırakmadan yukarı alır
            OzelGorselView(image:
                            Image(secilenKahraman.gorselIsmi)).frame(width: UIScreen.main.bounds.width * 0.6,height: UIScreen.main.bounds.height * 0.5,alignment: .center)
                .offset(y: UIScreen.main.bounds.height * -0.35)
                .padding(.bottom,-50)
                VStack {
                    Text(secilenKahraman.isim).font(.title).foregroundColor(.blue)
                   Spacer()
                    Text(secilenKahraman.gercekisim).font(.title).foregroundColor(.orange)
                HStack{
                    Text(secilenKahraman.sehir).bold()
                    Text(secilenKahraman.meslek).bold()
                }
                }.padding().offset(y:UIScreen.main.bounds.height * -0.40)
            Spacer()
        }
    }
}

#Preview {
    DetayView(secilenKahraman: ironman)
}
