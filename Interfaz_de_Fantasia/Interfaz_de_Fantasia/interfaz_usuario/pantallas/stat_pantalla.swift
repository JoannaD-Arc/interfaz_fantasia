//
//  stat_pantalla.swift
//  Interfaz_de_Fantasia
//
//  Created by alumno on 2/16/26.
//
import SwiftUI

enum PantallasDisponibles{
    
    case PantallaStat
    case PantallaInventario
    case PantallaDatos
    case PantallaMapa
    case PantallaRadio
    
}

struct stat_pantalla: View {
    @State var pantalla_actual = PantallasDisponibles.PantallaStat
    
    var body: some View {
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)
            
            
            VStack{
                SectionTitle()
                
                Spacer()
                
                SectionSubtitles(subtitulos_seccion: ["STATUS","S.P.E.C.I.A.L","PERKS"])
                    .bold()
                
                limb_gauge_box(actual_limb_health: 25, max_limb_health: 100)
                HStack{
                    VStack{
                        limb_gauge_box(actual_limb_health: 90, max_limb_health: 100)
                        Spacer()
                        limb_gauge_box(actual_limb_health: 100, max_limb_health: 100)
                    }
                    
                    Image("VaultGirlGreen")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150 , height: 150)
                   
                    VStack{
                        limb_gauge_box(actual_limb_health: 100, max_limb_health: 100)
                        Spacer()
                        limb_gauge_box(actual_limb_health: 25, max_limb_health: 80)
                    }
                }

                Spacer()
                
                Text("Jane")
                    .foregroundStyle(Color.pipboyVerde)
                    .bold()
                
                HStack{
                    weapon_ammo_box()
                    armor_rads_box()
                }

                stat_bottom_section()
                    .frame(width: 150, height: 50)
                    .bold()
            }//VSTACK
            
        }//ZSTACK

    } //VIEW
}

#Preview {
    stat_pantalla()
        
}
