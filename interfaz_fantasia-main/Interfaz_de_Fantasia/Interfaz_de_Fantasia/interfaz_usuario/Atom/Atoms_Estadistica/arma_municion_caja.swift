//
//  weapon_ammo_box.swift
//  Interfaz_de_Fantasia
//
//  Created by Jose de la luz Olivares Gandara on 22/02/26.
//

import SwiftUI

struct arma_municion_caja: View {
    var body: some View {
        
        HStack{
            
            ZStack{
                Rectangle()
                    .foregroundStyle(Color.pipboyVerdeAcento)
                
                Image(systemName: "music.mic")
                    .foregroundStyle(Color.pipboyVerde)

                    .bold()
            }
            .frame(width: 50, height: 50)
            .padding(0)
            
            ZStack{
                Rectangle()
                    .foregroundStyle(Color.pipboyVerdeAcento)
                VStack{
                    Image(systemName: "terminal.fill")
                        .foregroundStyle(Color.pipboyVerde)
                        .bold()
                    Text("28")
                        .foregroundStyle(Color.pipboyVerde)
                        .bold()
                }
            }
            .frame(width: 30, height: 50)
            .padding(0)
            
            
        }
        
        
    }
}
#Preview {
    arma_municion_caja()
}
