//
//  CardapioService.swift
//  HojeNoRU_iOS
//
//  Created by Lucas Telles on 23/10/25.
//

import Foundation

class CardapioService {
    func fetch(completion: @escaping (Result<[Cardapio], Error>) -> Void) {
        guard let url = URL(string: "http://192.168.0.120:5246/api/refeicoes/ru/1/dia/quarta-feira") else { return } // TESTE

        URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                completion(.failure(error))
                return
            }

            guard let data = data else { return }

            do {
                let jsonString = String(data: data, encoding: .utf8) ?? "Sem dados"
                print("JSON recebido:\n\(jsonString)")
                let cardapios = try JSONDecoder().decode([Cardapio].self, from: data)
                completion(.success(cardapios))
            } catch {
                print("Erro ao decodificar JSON:", error)
                completion(.failure(error))
            }
        }.resume()
    }
}

