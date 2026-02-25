//
//  lone_gauge_box.swift
//  Interfaz_de_Fantasia
//
//  Created by Jose de la luz Olivares Gandara on 22/02/26.
//

import SwiftUI

struct extremidad_caja_salud: View {
    
    var vida_actual_extremidad: Int
    var vida_maxima_extremidad: Int

    var porcentaje_vida: Double {
        Double(vida_actual_extremidad) / Double(vida_maxima_extremidad)
    }
    
    public var body: some View {
        
        VStack(alignment: .leading){
            HStack(alignment: .center){
                
                ZStack(alignment: .leading) {
                           Rectangle()
                               .stroke(Color.pipboyVerde, lineWidth: 2)
                               .background(Color.pipboyVerdeAcento)
                               .frame(width: 50, height: 10)
                           
                           Rectangle()
                               .fill(Color.pipboyVerde)
                               .frame(width: 50 * porcentaje_vida, height: 10)
                       }
                
            }
            .frame(width: 50, height: 10)
            .background(Color.pipboyVerdeAcento)
            
        }
        
        

    }
}

#Preview {
    extremidad_caja_salud(vida_actual_extremidad: 50, vida_maxima_extremidad: 100)
}
