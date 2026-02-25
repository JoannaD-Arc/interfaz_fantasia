//
//  date_box.swift
//  Interfaz_de_Fantasia
//
//  Created by Jose de la luz Olivares Gandara on 22/02/26.
//

import SwiftUI

struct fecha_caja: View {

    var body: some View {
        
        ZStack(alignment: .leading){
            Rectangle()
                .frame(width: 150, height: 25)
                .foregroundColor(.pipboyVerdeAcento)
            
            Text("\(Date.now, format: .dateTime.day().month(.defaultDigits).year())")
                .bold()
                .foregroundStyle(Color.pipboyVerde)
                .padding(10)
        }
    }
}

#Preview {
    fecha_caja()
}
