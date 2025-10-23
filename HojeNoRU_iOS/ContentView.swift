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
                    Text("CARDÁPIO ")
                        .font(.custom("KaushanScript-Regular", size: 40))
                        .foregroundColor(Color("color-cardapio"))
                                        
                    Text("Selecione seu restaurante universitário")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                .padding(.horizontal)
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
                }
                .padding(.vertical)
            }
        }
    }
}

struct RUDetailView: View {
    let ruName: String
    var body: some View {
        Text("Cardápio de hoje no \(ruName)")
            .font(.title)
            .navigationTitle(ruName)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
