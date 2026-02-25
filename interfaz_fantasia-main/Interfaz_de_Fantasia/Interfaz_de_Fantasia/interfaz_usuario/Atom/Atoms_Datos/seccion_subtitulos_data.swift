//
//  data_section_subtitles.swift
//  Interfaz_de_Fantasia
//
//  Created by alumno on 2/23/26.
//


import SwiftUI

struct seccion_subtitulos_data: View {
    
    var subtitulos_seccion: [String] = []
    
    var body: some View {
        
        ScrollView(.horizontal) {
            LazyHStack(){
                ForEach(Array(subtitulos_seccion.enumerated()), id: \.element) { index, subtitulo in
                    
                    Text(subtitulo)
                        .foregroundStyle(
                            index == 0
                            ? Color.pipboyVerde
                            : Color.pipboyVerdeAcento
                        )
                }
            }.frame(width: 350,height: 50)
        }
    }
}

#Preview {
    seccion_subtitulos_data(subtitulos_seccion: ["QUESTS","WORKSHOPS", "STATS"])
}
