//
//  quest_step_list.swift
//  Interfaz_de_Fantasia
//
//  Created by alumno on 2/23/26.
//
import SwiftUI

struct quest_step_list: View {
    var step_list: [String] = []
    @State var selected_step: String? = nil
    
    
    var body: some View {
        
        ScrollView(.vertical){
            LazyVStack(alignment: .leading){
                ForEach(step_list, id: \.self){step in
                    ZStack(alignment: .leading){
                        Rectangle()
                            .foregroundStyle(
                                selected_step == step
                                ? Color.pipboyVerde
                                : Color.pipboyVerdeAcento
                            )
                        HStack{
                            Image(systemName: "checkmark")
                                .foregroundStyle(
                                    selected_step == step
                                    ? Color.black
                                    : Color.pipboyVerdeAcento)
                                .padding(5)
                                .bold()
                            Text(step)
                                .foregroundStyle(
                                    selected_step == step
                                    ? Color.pipboyVerdeAcento
                                    : Color.pipboyVerde
                                )
                                .bold()
                        }
                    }.onTapGesture {
                        selected_step = step
                    }
                    .frame(width: 300, height: 35)
                }
        }

        }
    }
}

#Preview {
    quest_step_list(step_list: ["Quest 1", "Quest 2", "Quest 3"])
}
