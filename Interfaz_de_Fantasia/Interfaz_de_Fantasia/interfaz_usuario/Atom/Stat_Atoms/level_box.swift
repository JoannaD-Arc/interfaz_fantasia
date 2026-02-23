//
//  level_box.swift
//  Interfaz_de_Fantasia
//
//  Created by Jose de la luz Olivares Gandara on 21/02/26.
//
import SwiftUI





public struct level_box: View {
    var level: Int
    var actual_experience: Int
    var next_level_experience: Int

    var percentage: Double {
        Double(actual_experience) / Double(next_level_experience)
    }
    
    public var body: some View {
        
        VStack(alignment: .leading){
            HStack(alignment: .center){
                Text("NIVEL \(level)")
                    .frame(width: 100, height: 30, alignment: .leading)
                    .foregroundStyle(Color.pipboyVerde)

                ZStack(alignment: .leading) {
                           Rectangle()
                               .stroke(Color.pipboyVerde, lineWidth: 2)
                               .background(Color.pipboyVerdeAcento)
                               .frame(width: 300, height: 10)
                           
                           Rectangle()
                               .fill(Color.pipboyVerde)
                               .frame(width: 120 * percentage, height: 10)
                       }
                
            }
            .frame(width: 450, height: 30)
            .background(Color.pipboyVerdeAcento)
            
        }
        
        

    }
}

#Preview {
    level_box(level: 1, actual_experience: 65, next_level_experience: 100)
}

