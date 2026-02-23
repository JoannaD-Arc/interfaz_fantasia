//
//  quest_list.swift
//  Interfaz_de_Fantasia
//
//  Created by alumno on 2/23/26.
//

import SwiftUI

struct quest_list: View {
    
    var quest_list: [String] = []
    @State var selected_quest: String? = nil
    
    
    var body: some View {
        
        ScrollView(.vertical) {
            LazyVStack(alignment: .leading){
                ForEach(quest_list, id: \.self) { quest in
                    ZStack(alignment: .leading){

                        Rectangle()
                            .foregroundStyle(
                                selected_quest == quest
                                ?Color.pipboyVerde
                                :Color.black
                            )
                        HStack{
                            Image(systemName: "squareshape.fill")
                                .foregroundStyle(
                                    selected_quest == quest
                                    ?Color.black
                                    :Color.black)
                                .padding(5)
                            
                            Text(quest)
                                .padding(5)
                                .bold()
                                .foregroundStyle(
                                    selected_quest == quest
                                    ?Color.black
                                    :Color.pipboyVerde)
                        }
                        
                    }.onTapGesture {
                        selected_quest = quest
                    }


                }
            }
        }
    }
}

#Preview {
    quest_list(quest_list: ["Tarea iOS Interfaz de Fantasía", "Tarea iOS Interfaz de Fantasía"])
}
