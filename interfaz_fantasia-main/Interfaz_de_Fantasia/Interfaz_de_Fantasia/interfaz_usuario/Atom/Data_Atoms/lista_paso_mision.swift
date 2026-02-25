//
//  quest_step_list.swift
//  Interfaz_de_Fantasia
//
//  Created by alumno on 2/23/26.
//
import SwiftUI

struct lista_paso_mision: View {
    var paso_lista: [String] = []
    @State var paso_seleccionado: String? = nil
    
    
    var body: some View {
        
        ScrollView(.vertical){
            LazyVStack(alignment: .leading){
                ForEach(paso_lista, id: \.self){paso in
                    ZStack(alignment: .leading){
                        Rectangle()
                            .foregroundStyle(
                                paso_seleccionado == paso
                                ? Color.pipboyVerde
                                : Color.pipboyVerdeAcento
                            )
                        HStack{
                            Image(systemName: "checkmark")
                                .foregroundStyle(
                                    paso_seleccionado == paso
                                    ? Color.black
                                    : Color.pipboyVerdeAcento)
                                .padding(5)
                                .bold()
                            Text(paso)
                                .foregroundStyle(
                                    paso_seleccionado == paso
                                    ? Color.pipboyVerdeAcento
                                    : Color.pipboyVerde
                                )
                                .bold()
                        }
                    }.onTapGesture {
                        paso_seleccionado = paso
                    }
                    .frame(width: 300, height: 35)
                }
        }

        }
    }
}

#Preview {
    lista_paso_mision(paso_lista: ["Quest 1", "Quest 2", "Quest 3"])
}
