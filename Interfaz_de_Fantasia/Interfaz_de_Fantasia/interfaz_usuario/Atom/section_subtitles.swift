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
        
        LazyHStack {
            ForEach(1...10, id: \.self) { count in
                
            }
        }
        
        
    }
}

#Preview {
    SectionSubtitles()
}
