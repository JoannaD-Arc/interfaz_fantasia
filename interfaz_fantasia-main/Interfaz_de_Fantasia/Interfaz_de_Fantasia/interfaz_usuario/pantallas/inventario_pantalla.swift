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
                SectionTitle()
                SectionSubtitles(subtitulos_seccion: ["WEAPONS","APPAREL", "AID"])
                HStack{
                    VStack{
                        RadioStationList(station_list: ["Fragmentation Grenade (2)","Fat Man","Glow-Sighted Heavy Pipe Pistol","Machete","Shotgun"])
                    }
                    VStack{
                        Image("FatMan")
                            .resizable()
                            .scaledToFit()
                    }
                }
                Spacer()
                bottom_map_section()
            }
            
        }
    }
}

#Preview {
    inventario_pantalla()
}
