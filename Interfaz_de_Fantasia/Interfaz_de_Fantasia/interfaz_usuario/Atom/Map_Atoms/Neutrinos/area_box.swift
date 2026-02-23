//
//  area_box.swift
//  Interfaz_de_Fantasia
//
//  Created by Jose de la luz Olivares Gandara on 22/02/26.
//


import SwiftUI

struct area_box: View {
    var body: some View {
        ZStack(alignment: .trailing){
            Rectangle()
                .frame(width: 300, height: 25)
                .foregroundColor(.pipboyVerdeAcento)
            
            Text("Commonwealth")
                .bold()
                .foregroundStyle(Color.pipboyVerde)
                .padding(10)
        }
    }
}

#Preview {
    area_box()
}
