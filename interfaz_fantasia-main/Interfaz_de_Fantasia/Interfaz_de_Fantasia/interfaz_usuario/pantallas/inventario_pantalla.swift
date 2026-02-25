//
//  inventario_pantalla.swift
//  Interfaz_de_Fantasia
//
//  Created by alumno on 2/23/26.
//

import SwiftUI

struct inventario_pantalla: View {
    var body: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                SeccionTitulos()
                SeccionSubtitulos(subtitulos_seccion: ["WEAPONS", "APPAREL", "AID"])
                HStack{
                    VStack{
                        ListaEstacionDeRadio(station_list: ["Fragmentation Grenade (2)", "Fat Man", "Glow-Sighted Heavy Pipe Pistol", "Machete","Shotgun"])
                    }
                    VStack(alignment: .center){
                        HStack{
                            Image("FatMan")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 100)
                                
                        }

                        EstadisticasArma()
                            .padding(10)
                    }
                }
                Spacer()
                seccion_informacion_inferior()
            }
            
        }
    }
}

#Preview {
    inventario_pantalla()
}
