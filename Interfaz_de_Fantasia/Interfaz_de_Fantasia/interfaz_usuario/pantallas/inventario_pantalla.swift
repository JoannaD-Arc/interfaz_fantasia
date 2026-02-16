//
//  inventario_pantalla.swift
//  Interfaz_de_Fantasia
//
//  Created by alumno on 2/16/26.
//

//
//  stat_pantalla.swift
//  Interfaz_de_Fantasia
//
//  Created by alumno on 2/16/26.
//
import SwiftUI

struct inventario_pantalla: View {
    @State var pantalla_actual = PantallasDisponibles.PantallaInventario
    
    var body: some View {
        SectionTitle()
        
        
        Spacer()
        
    }
}

#Preview {
   inventario_pantalla()
        
}
