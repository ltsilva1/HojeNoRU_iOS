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
                VStack(spacing: 20) {
                    NavigationLink(destination: RUDetailView(ruName: "RU01 - CAMPUS CENTRO")) {
                        RUCard(title: "RU01 - CAMPUS CENTRO", color: .red, imageName: "img-ru1")
                    }
                    NavigationLink(destination: RUDetailView(ruName: "RU02 - CAMPUS SAÚDE")) {
                        RUCard(title: "RU02 - CAMPUS SAÚDE", color: .yellow, imageName: "img-ru2")
                    }
                    NavigationLink(destination: RUDetailView(ruName: "RU03 - CAMPUS DO VALE")) {
                        RUCard(title: "RU03 - CAMPUS DO VALE", color: .blue, imageName: "img-ru3")
                    }
                }
                .padding(.vertical)
            }
            .navigationTitle("Restaurantes Universitários")
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
