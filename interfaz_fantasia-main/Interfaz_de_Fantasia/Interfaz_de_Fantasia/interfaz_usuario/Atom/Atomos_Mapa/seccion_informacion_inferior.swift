//
//  bottom_map_section.swift
//  Interfaz_de_Fantasia
//
//  Created by Jose de la luz Olivares Gandara on 22/02/26.
//

import SwiftUI

struct seccion_informacion_inferior: View {
    var body: some View {
        HStack{
            fecha_caja()
            hora_caja()
            area_caja()
        }
            .background(Color.black)
            .frame(width: 400, height:25)
    }
}

#Preview {
    seccion_informacion_inferior()
}
