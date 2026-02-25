//
//  weapon_ammo_box.swift
//  Interfaz_de_Fantasia
//
//  Created by Jose de la luz Olivares Gandara on 22/02/26.
//

import SwiftUI

struct armadura_radiacion_caja: View {
    var body: some View {
        
        HStack{
            
            ZStack{
                Rectangle()
                    .foregroundStyle(Color.pipboyVerdeAcento)
                
                Image(systemName: "person.crop.square.fill")
                    .foregroundStyle(Color.pipboyVerde)

                    .bold()
            }
            .frame(width: 50, height: 50)

            ZStack{
                Rectangle()
                    .foregroundStyle(Color.pipboyVerdeAcento)
                VStack{
                    Image(systemName: "bolt.fill")
                        .foregroundStyle(Color.pipboyVerde)
                        .bold()
                    Text("28")
                        .foregroundStyle(Color.pipboyVerde)
                        .bold()
                }
            }
            .frame(width: 30, height: 50)
            
            
            ZStack{
                Rectangle()
                    .foregroundStyle(Color.pipboyVerdeAcento)
                VStack{
                    Image(systemName: "wifi")
                        .foregroundStyle(Color.pipboyVerde)
                        .bold()
                    Text("5")
                        .foregroundStyle(Color.pipboyVerde)
                        .bold()
                }
            }
            .frame(width: 30, height: 50)
        }
    
    }
}
#Preview {
    armadura_radiacion_caja()
}
