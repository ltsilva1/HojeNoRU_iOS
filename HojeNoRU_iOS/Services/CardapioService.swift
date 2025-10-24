//
//  CardapioService.swift
//  HojeNoRU_iOS
//
//  Created by Lucas Telles on 23/10/25.
//

import Foundation

class CardapioService {
    func fetch(ruId: Int, diaSemana: String, completion: @escaping (Result<[Cardapio], Error>) -> Void) {
        let diaFormatado = diaSemana.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? diaSemana
        let urlString = "\(API.baseURL)/ru/\(ruId)/dia/\(diaFormatado)"

        guard let url = URL(string: urlString) else {
            print("URL inválida: \(urlString)")
            return
        }

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
                completion(.failure(CardapioError.formatoIncorreto))
            }
        }.resume()
    }
}

enum CardapioError: LocalizedError {
    case formatoIncorreto
    
    var errorDescription: String? {
        switch self {
        case .formatoIncorreto:
            return "O cardápio está indisponível no momento."
        }
    }
}
