//
//  Cardapio.swift
//  HojeNoRU_iOS
//
//  Created by Lucas Telles on 23/10/25.
//

import Foundation

struct Cardapio: Codable, Identifiable {
    var id = UUID()
    let tipo: String
    let diaSemana: String
    let data: String
    let ruNome: String
    let itens: [String]
    
    private enum CodingKeys: String, CodingKey {
            case tipo, diaSemana, data, ruNome, itens
        }
}

