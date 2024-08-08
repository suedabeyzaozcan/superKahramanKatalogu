//
//  OzelGorselView.swift
//  superKahramanKatalogu
//
//  Created by Sueda Beyza Özcan on 8.08.2024.
//

import SwiftUI

struct OzelGorselView: View {
    var image : Image
    var body: some View {
        image
            .resizable().aspectRatio(contentMode: .fit).clipShape(Circle()).overlay(Circle().stroke(Color.gray,lineWidth: 1)).shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    OzelGorselView(image : Image(""))
}
