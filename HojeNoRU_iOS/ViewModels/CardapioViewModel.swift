//
//  CardapioViewModel.swift
//  HojeNoRU_iOS
//
//  Created by Lucas Telles on 23/10/25.
//

import Foundation

@MainActor
class CardapioViewModel: ObservableObject {
    @Published var refeicoes: [Cardapio] = []
    @Published var isLoading = false
    @Published var errorMessage: String?

    private let service = CardapioService()

    func carregar(ruId: Int, diaSemana: String) {
        isLoading = true
        service.fetch(ruId: ruId, diaSemana: diaSemana) { [weak self] result in
            DispatchQueue.main.async {
                guard let self = self else { return }
                self.isLoading = false
                switch result {
                case .success(let data):
                    self.refeicoes = data
                case .failure(let erro):
                    self.errorMessage = erro.localizedDescription
                }
            }
        }
    }
}
