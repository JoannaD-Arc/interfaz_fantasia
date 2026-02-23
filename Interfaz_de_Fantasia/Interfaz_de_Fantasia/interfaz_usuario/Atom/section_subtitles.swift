//
//  section_subtitles.swift
//  Interfaz_de_Fantasia
//
//  Created by alumno on 2/16/26.
//

import SwiftUI

struct SectionSubtitles: View {
    
    var subtitulos_seccion: [String] = []
    
    var body: some View {
        
        ScrollView(.horizontal) {
            LazyHStack {
                ForEach(Array(subtitulos_seccion.enumerated()), id: \.element) { index, subtitulo in
                    
                    Text(subtitulo)
                        .foregroundStyle(
                            index == 0
                            ? Color.pipboyVerde
                            : Color.pipboyVerdeAcento
                        )
                }
            }
        }
    }
}

#Preview {
    SectionSubtitles(subtitulos_seccion: ["STATUS","S.P.E.C.I.A.L","PERKS"])
        .bold()
}
