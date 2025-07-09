//
//  AppetizerListCell.swift
//  Appetizers
//
//  Created by Дмитро Сокотнюк on 11.07.2025.
//

import SwiftUI

struct AppetizerListCell: View {
    
    let appetizer: Appetizer
    var body: some View {
        HStack {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
            
//            AsyncImage(url: URL(string: appetizer.imageURL)) { image in
//                image
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 100, height: 75)
//                    .cornerRadius(8)
//                    .shadow(radius: 2)
//            } placeholder: {
//                Image(.placeholder)
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 100, height: 75)
//                    .cornerRadius(8)
//                    .shadow(radius: 2)
//            }
            
            VStack(alignment: .leading, spacing: 5) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text("\(appetizer.price)₴")
                    .foregroundStyle(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
        }
    }
}

#Preview {
    AppetizerListCell(appetizer: MockData.sampleAppetizer)
}
