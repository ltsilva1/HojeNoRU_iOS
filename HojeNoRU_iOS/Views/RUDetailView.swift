//
//  RUDetailView.swift
//  HojeNoRU_iOS
//
//  Created by Lucas Telles on 23/10/25.
//

import Foundation
import SwiftUI

struct RUDetailView: View {
    let ruId: Int
    let ruName: String
    @StateObject private var vm = CardapioViewModel()

    var body: some View {
        VStack {
            if vm.isLoading {
                loadingView
            } else if let error = vm.errorMessage {
                errorView(error)
            } else if vm.refeicoes.isEmpty {
                emptyView
            } else {
                refeicoesList
            }
        }
        .navigationTitle(ruName)
        .onAppear {
            vm.carregar(ruId: ruId, diaSemana: diaAtual())
        }
    }
    
    private var loadingView: some View {
        ProgressView("Carregando cardápio…")
            .padding()
    }

    private func errorView(_ message: String) -> some View {
        Text("Erro: \(message)")
            .foregroundColor(.secondary)
    }

    private var emptyView: some View {
        Text("Nenhum cardápio disponível.")
            .foregroundColor(.secondary)
    }

    private var refeicoesList: some View {
        List {
            ForEach(vm.refeicoes) { refeicao in
                Section(header: refeicaoHeader(refeicao)) {
                    ForEach(refeicao.itens, id: \.self) { item in
                        Text("• \(item)")
                    }
                }
            }
        }
        .listStyle(.insetGrouped)
    }

    private func refeicaoHeader(_ refeicao: Cardapio) -> some View {
        HStack {
            Image(systemName: refeicao.tipo == "Almoco" ? "sun.max.fill" : "moon.fill") // emotezinhos
                .foregroundColor(refeicao.tipo == "Almoco" ? .orange : .indigo)
            Text(refeicao.tipo == "Almoco" ? "ALMOÇO" : "JANTAR")
                .font(.headline)
        }
    }


}
