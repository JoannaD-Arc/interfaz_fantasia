//
//  lone_gauge_box.swift
//  Interfaz_de_Fantasia
//
//  Created by Jose de la luz Olivares Gandara on 22/02/26.
//

import SwiftUI

struct limb_gauge_box: View {
    
    var actual_limb_health: Int
    var max_limb_health: Int

    var percentage: Double {
        Double(actual_limb_health) / Double(max_limb_health)
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
                               .frame(width: 50 * percentage, height: 10)
                       }
                
            }
            .frame(width: 50, height: 10)
            .background(Color.pipboyVerdeAcento)
            
        }
        
        

    }
}

#Preview {
    limb_gauge_box(actual_limb_health: 50, max_limb_health: 100)
}
