//
//  weapon_stats.swift
//  Interfaz_de_Fantasia
//
//  Created by alumno on 2/23/26.

import SwiftUI

struct EstadisticasArma: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                CajaEstadisticasArma(leyenda: "Damage", valor: "151")
                Image(systemName: "plus")
                    .bold()
                    .foregroundStyle(Color.pipboyVerde)
                Image(systemName: "plus")
                    .bold()
                    .foregroundStyle(Color.pipboyVerde)
                Image(systemName: "plus")
                    .bold()
                    .foregroundStyle(Color.pipboyVerde)
            }
            .padding(2.5)
            HStack{
                CajaEstadisticasArma(leyenda: "Fire Rate", valor: "0")
            }
            .padding(2.5)
            
            HStack{
                CajaEstadisticasArma(leyenda: "Range", valor: "93")
            }
            .padding(2.5)
            
            HStack{
                CajaEstadisticasArma(leyenda: "Accuracy", valor: "0")
                Image(systemName: "plus")
                    .bold()
                    .foregroundStyle(Color.pipboyVerde)
                Image(systemName: "plus")
                    .bold()
                    .foregroundStyle(Color.pipboyVerde)
                Image(systemName: "plus")
                    .bold()
                    .foregroundStyle(Color.pipboyVerde)
            }
            .padding(2.5)
            
            HStack{
                CajaEstadisticasArma(leyenda: "Weight", valor: "12")

            }
            .padding(2.5)
            
            HStack{
                CajaEstadisticasArma(leyenda: "Value", valor: "500")
                Image(systemName: "minus")
                    .bold()
                    .foregroundStyle(Color.pipboyVerde)
                Image(systemName: "minus")
                    .bold()
                    .foregroundStyle(Color.pipboyVerde)
                Image(systemName: "minus")
                    .bold()
                    .foregroundStyle(Color.pipboyVerde)
            }
            .padding(2.5)
            
            
        }
    }
}

#Preview {
    EstadisticasArma()
}
