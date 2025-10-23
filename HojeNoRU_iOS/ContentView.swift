//
//  ContentView.swift
//  HojeNoRU_iOS
//
//  Created by Lucas Telles on 22/10/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 4) {
                    Text(" CARDÁPIO ")
                        .font(.custom("KaushanScript-Regular", size: 40))
                        .foregroundColor(Color("color-cardapio"))
                        .padding(.horizontal)
                    
                                        
                    Text("Selecione seu restaurante universitário")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                .padding(.horizontal, 20)
                .padding(.top, 10)
                
                VStack(spacing: 20) {
                    NavigationLink(destination: RUDetailView(ruName: "RU01 - CAMPUS CENTRO")) {
                        RUCard(title: "RU01 - CAMPUS CENTRO", color: Color("color-ru1"), imageName: "img-ru1")
                    }
                    NavigationLink(destination: RUDetailView(ruName: "RU02 - CAMPUS SAÚDE")) {
                        RUCard(title: "RU02 - CAMPUS SAÚDE", color: Color("color-ru2"), imageName: "img-ru2")
                    }
                    NavigationLink(destination: RUDetailView(ruName: "RU03 - CAMPUS DO VALE")) {
                        RUCard(title: "RU03 - CAMPUS DO VALE", color: Color("color-ru3"), imageName: "img-ru3")
                    }
                    NavigationLink(destination: RUDetailView(ruName: "RU04 - CAMPUS AGRONOMIA")) {
                        RUCard(title: "RU04 - CAMPUS AGRONOMIA", color: Color("color-ru4"), imageName: "img-ru4")
                    }
                    NavigationLink(destination: RUDetailView(ruName: "RU05 - CAMPUS ESEFID")) {
                        RUCard(title: "RU05 - CAMPUS ESEFID", color: Color("color-ru5"), imageName: "img-ru5")
                    }
                    NavigationLink(destination: RUDetailView(ruName: "RU06 - CAMPUS DO VALE")) {
                        RUCard(title: "RU06 - CAMPUS DO VALE", color: Color("color-ru6"), imageName: "img-ru6")
                    }
                }
                .padding(.vertical)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
