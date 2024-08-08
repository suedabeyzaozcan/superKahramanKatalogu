//
//  ListeRowView.swift
//  superKahramanKatalogu
//
//  Created by Sueda Beyza Özcan on 8.08.2024.
//

import SwiftUI

struct ListeRowView: View {
    var superkahraman : superKahraman
    var body: some View {
        HStack{
            Image(superkahraman.gorselIsmi).resizable().clipShape(Circle()).aspectRatio(contentMode: .fit).frame(width: 70, height: 70,alignment: .leading)
            Spacer()
            VStack{
                Text(superkahraman.isim).font(.title).bold()
                Text(superkahraman.gercekisim).font(.title)
            }
            Spacer()
        }.padding()
    }
}
#Preview {
    ListeRowView(superkahraman: batman)
}
