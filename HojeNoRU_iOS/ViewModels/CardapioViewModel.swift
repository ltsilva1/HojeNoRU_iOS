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

    func carregar(ruNome: String) {
        isLoading = true
        service.fetch { [weak self] result in
            DispatchQueue.main.async {
                self?.isLoading = false
                switch result {
                case .success(let todos):
                    self?.refeicoes = todos.filter { $0.ruNome.contains(ruNome) }
                case .failure(let erro):
                    self?.errorMessage = erro.localizedDescription
                }
            }
        }
    }
}
