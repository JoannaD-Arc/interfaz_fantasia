//
//  stat_bottom_section.swift
//  Interfaz_de_Fantasia
//
//  Created by Jose de la luz Olivares Gandara on 21/02/26.
//

import SwiftUI

public struct estadistica_caja_inferior: View {
    public var body: some View {
        HStack{
            hp_box(health_points: 67, max_health_points: 90)
            level_box(level: 5, actual_experience: 40, next_level_experience: 100)
            ap_box(ability_points: 69, max_ability_points: 70)
        }
    }
}

#Preview {
    estadistica_caja_inferior()
}
