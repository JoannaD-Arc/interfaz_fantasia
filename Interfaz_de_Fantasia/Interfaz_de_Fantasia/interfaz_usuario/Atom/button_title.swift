//
//  button_title.swift
//  Interfaz_de_Fantasia
//
//  Created by alumno on 2/16/26.
//

import SwiftUI

struct ButtonTitle: View {
    var nombre: String
    
    var body: some View {
        Button(nombre) {
            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
        }
        .frame(width: 100,height: 0)
        .padding(10)
        .foregroundStyle(Color.pipboyVerde)
        .bold()
    }
}
