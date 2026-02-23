//
//  inventario_pantalla.swift
//  Interfaz_de_Fantasia
//
//  Created by alumno on 2/16/26.
//

//
//  stat_pantalla.swift
//  Interfaz_de_Fantasia
//
//  Created by alumno on 2/16/26.
//
import SwiftUI

struct data_pantalla: View {
    @State var pantalla_actual = PantallasDisponibles.PantallaInventario
    
    var body: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                SectionTitle()
                HStack{
                    Spacer(minLength: 290)
                    data_section_subtitles(subtitulos_seccion: ["QUESTS","WORKSHOPS","STATS"])
                        .bold()
                        .padding(0)
                }

                Spacer()
                HStack{
                    
                   quest_list(quest_list: ["Tarea iOS interfaz de Fantasía","Desarrollar un juego de fantasía","Aprender a usar Git", "Nukear las islas salomón"])
                    VStack{
                        Image("Hacker")
                            .resizable()
                            .scaledToFit()
    
                        quest_step_list(step_list: ["Realizar 5 pantallas de Fantasía","Hacerte buey","Abrir el Gitjo"])
                        
                    }
                }
                Spacer()
                bottom_map_section()
            }
        }
    }
}

#Preview {
  data_pantalla()
        
}
