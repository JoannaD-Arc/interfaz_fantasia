//
//  weapon_stats.swift
//  Interfaz_de_Fantasia
//
//  Created by alumno on 2/23/26.
//

import SwiftUI

struct CajaEstadisticasArma: View {
    var leyenda: String
    var valor: String =  ""
    
    var body: some View {
        ZStack{
            Rectangle()
                
                .foregroundStyle(Color.pipboyVerdeAcento)
                
            HStack{
                Text(leyenda)
                    .foregroundStyle(Color.pipboyVerde)
                    .bold()
                    .padding(5)
                Spacer()
                Text(valor)
                    .foregroundStyle(Color.pipboyVerde)
                    .bold()                 
                    .padding(5)
            }
        }
        .frame(width:200, height:10)
    }
}

#Preview {
    CajaEstadisticasArma(leyenda: "Damage")
}
