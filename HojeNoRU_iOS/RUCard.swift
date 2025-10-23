//
//  RUCard.swift
//  HojeNoRU_iOS
//
//  Created by Lucas Telles on 22/10/25.
//

import SwiftUI

struct RUCard: View {
    var title: String
    var color: Color
    var imageName: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .fill(color)
                .frame(height: 120)
                .shadow(radius: 4)
            
            HStack(spacing: 16) {
                Image(imageName) // nome exato do asset
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .padding(.leading, 10)
                
                Text(title)
                    .font(.custom("BarlowCondensed-Regular", size: 26))
                    .foregroundColor(.white)
                    .bold()
                
                Spacer()
            }
            .padding(.horizontal)
        }
        .padding(.horizontal)
    }
    
    
    struct RUCard_Previews: PreviewProvider {
        static var previews: some View {
            RUCard(title: "ExemploRU0", color: .blue, imageName: "img-ru1")
        }
    }
}
