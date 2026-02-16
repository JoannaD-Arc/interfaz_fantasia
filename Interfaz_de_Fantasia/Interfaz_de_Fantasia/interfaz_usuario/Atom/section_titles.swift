//
//  section_title.swift
//  Interfaz_de_Fantasia
//
//  Created by alumno on 2/16/26.
//

import SwiftUI

struct SectionTitle: View {
    
    var body: some View {
        
        HStack {
            
            ButtonTitle(nombre: "STAT")
            ButtonTitle(nombre: "INV")
            ButtonTitle(nombre: "DATA")
            ButtonTitle(nombre: "MAP")
            ButtonTitle(nombre: "RADIO")

        }
        .padding(10)
        
        Divider()
            .foregroundStyle(Color("pipboy_verde"))
            .background(Color("pipboy_verde"))
            .scaledToFit()
            .padding(1)
            
    }
    
    
}

#Preview {
    SectionTitle()
}
