//
//  ap_box.swift
//  Interfaz_de_Fantasia
//
//  Created by Jose de la luz Olivares Gandara on 21/02/26.
//

//
//  hp_box.swift
//  Interfaz_de_Fantasia
//
//  Created by Jose de la luz Olivares Gandara on 21/02/26.
//

import SwiftUI



public struct ap_box: View {
    
    var ability_points: Int
    var max_ability_points: Int
    
    public var body: some View {
        
        Text("AP \(ability_points)/\(max_ability_points)")
            .bold()
            .padding()
            .frame(width: 150, height: 30, alignment: .trailing)
            .foregroundStyle(Color.pipboyVerde)
            .background(Color.pipboyVerdeAcento)
            
    }
}

#Preview {
    ap_box(ability_points: 69, max_ability_points: 70)
}
