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
                    ForEach(RUData.all) { ru in
                        NavigationLink(destination: RUDetailView(ruId: ru.id, ruName: "\(ru.code) - \(ru.name)")) {
                            RUCard(id: ru.code, title: ru.name, color: ru.color, imageName: ru.imageName)
                        }
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
