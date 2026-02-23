//
//  radio_pantalla.swift
//  Interfaz_de_Fantasia
//
//  Created by Jose de la luz Olivares Gandara on 22/02/26.
//

import SwiftUI

struct PantallaRadio: View {
    @State var pantalla_actual = PantallasDisponibles.PantallaRadio
    
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea()
            
            VStack{
                SectionTitle()
                Spacer()
                
                
                HStack{
                    RadioStationList(station_list: ["EXA F.M.","BANDAMAX RADIO","RADIO CHIDA","RADIO UACJ","RADIO NO SÉ","RADIO FALLOUT","CANCIONES VIEJITAS PERO BONITAS","LOS SANTOS EAST F.M","SPOTIFY RADIO","EXA F.M. OTRA VEZ","地球人の皆さん、こんにちは","ME GUSTA EL PAN RADIO","AYUDENME POR FAVOR RADIO","SEÑAL DESCONOCIDA 00","SEÑAL DESCONOCIDA 01","SEÑAL DESCONOCIDA 02","RADIO RADIO","RADIO RADIO RADIO"])
                    
                    Spacer()
                     
                    Image("RadioChartGreen")
                        .resizable()
                }
            }
        }
    }
    
}


#Preview {
    PantallaRadio()
}
