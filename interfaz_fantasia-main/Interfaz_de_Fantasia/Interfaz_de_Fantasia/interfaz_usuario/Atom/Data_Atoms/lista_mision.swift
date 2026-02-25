//
//  quest_list.swift
//  Interfaz_de_Fantasia
//
//  Created by alumno on 2/23/26.
//

import SwiftUI

struct lista_mision: View {
    
    var lista_de_lista_mision: [String] = []
    @State var selected_quest: String? = nil
    
    
    var body: some View {
        
        ScrollView(.vertical) {
            LazyVStack(alignment: .leading){
                ForEach(lista_de_lista_mision, id: \.self) { quest in
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
    lista_mision(lista_de_lista_mision: ["Tarea iOS Interfaz de Fantasía", "Tarea iOS Interfaz de Fantasía"])
}
