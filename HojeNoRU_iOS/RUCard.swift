//
//  RUCard.swift
//  HojeNoRU_iOS
//
//  Created by Lucas Telles on 22/10/25.
//

import SwiftUI

struct RUCard: View {
    var id: String
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
                
                VStack(alignment: .leading) {
                    Text(id) // exemplo: RU01
                        .font(.custom("BarlowCondensed-Regular", size: 18))
                        .foregroundColor(.white.opacity(0.9))
                                    
                    Text(title) // exemplo: CAMPUS CENTRO
                        .font(.custom("BarlowCondensed-Regular", size: 26))
                        .bold()
                        .foregroundColor(.white)
                    }
                
                Spacer()
            }
            .padding(.horizontal)
        }
        .padding(.horizontal)
    }
    
    
    struct RUCard_Previews: PreviewProvider {
        static var previews: some View {
            RUCard(id: "RU 01", title: "CAMPUS CENTRO", color: Color("color-ru1"), imageName: "img-ru1")
        }
    }
}
