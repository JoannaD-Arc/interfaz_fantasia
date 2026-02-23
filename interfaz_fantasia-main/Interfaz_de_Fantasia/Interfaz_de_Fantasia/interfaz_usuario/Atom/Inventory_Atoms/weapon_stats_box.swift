//
//  weapon_stats.swift
//  Interfaz_de_Fantasia
//
//  Created by alumno on 2/23/26.
//

import SwiftUI

struct weapon_stats: View {
    var leyenda: String
    var valor: String =  ""
    
    var body: some View {
        ZStack{
            Rectangle()
                
                .foregroundStyle(Color.pipboyVerdeAcento)
            
            HStack{
                Text(leyenda)
                    .foregroundStyle(Color.pipboyVerde)
                Spacer()
                Text(valor)
                    .foregroundStyle(Color.pipboyVerde)
            }
        }
        .frame(width:500, height:25)
    }
}

#Preview {
    weapon_stats(leyenda: "hola mundo")
}
