//
//  hp_box.swift
//  Interfaz_de_Fantasia
//
//  Created by Jose de la luz Olivares Gandara on 21/02/26.
//

import SwiftUI


public struct hp_box: View {
    
    var health_points: Int
    var max_health_points: Int
    
    public var body: some View {


        Text("HP \(health_points)/\(max_health_points)")
            .bold()
            .padding()
            .frame(width: 150, height: 30, alignment: .leading)
            .foregroundStyle(Color.pipboyVerde)
            .background(Color.pipboyVerdeAcento)
            
    }
}

#Preview {
    hp_box(health_points: 100, max_health_points: 100)
}
