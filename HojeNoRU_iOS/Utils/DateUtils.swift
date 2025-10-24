//
//  DateUtils.swift
//  HojeNoRU_iOS
//
//  Created by Lucas Telles on 24/10/25.
//

import Foundation

func diaAtual() -> String {
    let formatter = DateFormatter()
    formatter.locale = Locale(identifier: "pt_BR")
    formatter.dateFormat = "EEEE" // dia da semana por extenso (bizonho)
    let dia = formatter.string(from: Date()).lowercased()
    return dia
}
