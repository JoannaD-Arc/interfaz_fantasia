//
//  stat_pantalla.swift
//  Interfaz_de_Fantasia
//
//  Created by alumno on 2/16/26.
//
import SwiftUI

enum PantallasDisponibles{
    
    case estadisticas
    case inventario
    case datos
    case mapa
    case radio
    
}

struct estadistica_pantalla: View {
    
    @State var pantalla_actual = PantallasDisponibles.estadisticas
    
    var body: some View {
        
        ZStack{
            
            Color.black.edgesIgnoringSafeArea(.all)
            
            
            VStack{
                SeccionTitulos()
                
                Spacer()
                
                SeccionSubtitulos(subtitulos_seccion: ["STATUS", "S.P.E.C.I.A.L", "PERKS"])
                    .bold()
                
                extremidad_caja_salud(vida_actual_extremidad: 25, vida_maxima_extremidad: 100)
                HStack{
                    VStack{
                        extremidad_caja_salud(vida_actual_extremidad: 90, vida_maxima_extremidad: 100)
                        Spacer()
                        extremidad_caja_salud(vida_actual_extremidad: 100, vida_maxima_extremidad: 100)
                    }
                    
                    Image("VaultGirlGreen")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150 , height: 150)
                   
                    VStack{
                        extremidad_caja_salud(vida_actual_extremidad: 100, vida_maxima_extremidad: 100)
                        Spacer()
                        extremidad_caja_salud(vida_actual_extremidad: 25, vida_maxima_extremidad: 80)
                    }
                }

                Spacer()
                
                Text("Jane")
                    .foregroundStyle(Color.pipboyVerde)
                    .bold()
                
                HStack{
                    arma_municion_caja()
                    armadura_radiacion_caja()
                }

                stat_bottom_section()
                    .frame(width: 150, height: 50)
                    .bold()
            }//VSTACK
            
        }//ZSTACK

        
        
    } //VIEW
}

#Preview {
    estadistica_pantalla()
        
}
