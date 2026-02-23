//
//  mapa_pantalla.swift
//  Interfaz_de_Fantasia
//
//  Created by Jose de la luz Olivares Gandara on 22/02/26.
//

import SwiftUI

struct mapa_pantalla: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            Image("FalloutMAPGreen")
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                
                SectionTitle()
                
                Spacer()
                
                bottom_map_section()
            }
        }
    }
}

#Preview {
    mapa_pantalla()
}
