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

struct datos_pantalla: View {
    @State var pantalla_actual = PantallasDisponibles.inventario
    
    var body: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                SeccionTitulos()
                HStack{
                    Spacer(minLength: 290)
                    seccion_subtitulos_data(subtitulos_seccion: ["QUESTS","WORKSHOPS","STATS"])
                        .bold()
                        .padding(0)
                }

                Spacer()
                HStack{
                    
                   lista_mision(lista_de_lista_mision: ["Tarea iOS interfaz de Fantasía","Desarrollar un juego de fantasía","Aprender a usar Git", "Nukear las islas salomón"])
                    VStack{
                        Image("Hacker")
                            .resizable()
                            .scaledToFit()
    
                        lista_paso_mision(paso_lista: ["Realizar 5 pantallas de Fantasía","Hacerte buey","Abrir el Gitjo"])
                        
                    }
                }
                Spacer()
                seccion_informacion_inferior()
            }
        }
    }
}

#Preview {
  datos_pantalla()
        
}
