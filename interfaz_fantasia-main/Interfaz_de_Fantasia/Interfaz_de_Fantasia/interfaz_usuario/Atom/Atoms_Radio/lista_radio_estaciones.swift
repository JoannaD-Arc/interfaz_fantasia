//
//  radio_station_list.swift
//  Interfaz_de_Fantasia
//
//  Created by Jose de la luz Olivares Gandara on 22/02/26.
//

import SwiftUI

struct ListaEstacionDeRadio: View {
    
    var station_list: [String] = []
    @State var selected_station: String? = nil
    
    
    var body: some View {
        
        ScrollView(.vertical) {
            LazyVStack(alignment: .leading){
                ForEach(station_list, id: \.self) { station in
                    ZStack(alignment: .leading){

                        Rectangle()
                            .foregroundStyle(
                                selected_station == station
                                ?Color.pipboyVerde
                                :Color.black
                            )
                        HStack{
                            Image(systemName: "squareshape.fill")
                                .foregroundStyle(
                                    selected_station == station
                                    ?Color.black
                                    :Color.black)
                                .padding(5)
                            
                            Text(station)
                                .padding(5)
                                .bold()
                                .foregroundStyle(
                                    selected_station == station
                                    ?Color.black
                                    :Color.pipboyVerde)
                        }
                        
                    }.onTapGesture {
                        selected_station = station
                    }


                }
            }
        }
    }
}

#Preview {
    ListaEstacionDeRadio(station_list: ["EXA FM", "RADIO 103.5", "RADIO 104.3", "RADIO 105.1"])
}
