//
//  area_box.swift
//  Interfaz_de_Fantasia
//
//  Created by Jose de la luz Olivares Gandara on 22/02/26.
//


import SwiftUI

struct hora_caja: View {
    var body: some View {
        ZStack(alignment: .leading){
            Rectangle()
                .frame(width: 300, height: 25)
                .foregroundColor(.pipboyVerdeAcento)
            
            Text(
                Date.now,
                format: .dateTime
                    .hour(.twoDigits(amPM: .omitted))
                    .minute(.twoDigits)
            )
            .bold()
            .foregroundStyle(Color.pipboyVerde)
            .padding(10)
        }
    }
}
#Preview {
    hora_caja()
}
