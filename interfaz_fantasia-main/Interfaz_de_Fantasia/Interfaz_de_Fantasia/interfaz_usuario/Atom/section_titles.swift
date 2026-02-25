//
//  section_title.swift
//  Interfaz_de_Fantasia
//
//  Created by alumno on 2/16/26.
//

import SwiftUI

struct SeccionTitulos: View {
    
    var body: some View {
        VStack{
            HStack {
                
                ButtonTitle(nombre: "STAT")
                ButtonTitle(nombre: "INV")
                ButtonTitle(nombre: "DATA")
                ButtonTitle(nombre: "MAP")
                ButtonTitle(nombre: "RADIO")

            }
            .padding(5)
            
            Divider()
                .foregroundStyle(Color("pipboy_verde"))
                .background(Color("pipboy_verde"))
                .scaledToFit()
                .padding(0)
        }.background(Color.black)

            
    }
    
    
}

#Preview {
    SeccionTitulos()
}
