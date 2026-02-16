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
        SectionTitle()
        
        Spacer()

        
    }
}

#Preview {
    stat_pantalla()
        
}
