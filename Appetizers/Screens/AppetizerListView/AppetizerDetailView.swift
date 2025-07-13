//
//  AppetizerDetailView.swift
//  Appetizers
//
//  Created by Дмитро Сокотнюк on 11.07.2025.
//

import SwiftUI

struct AppetizerDetailView: View {
    @EnvironmentObject var order: Order
    
    let appetizer: Appetizer
    @Binding var isShowingDetail: Bool
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: appetizer.imageURL)) { image in
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 320, height: 230)
            } placeholder: {
                Image(.placeholder)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 320, height: 230)
            }
            
            VStack {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                
                HStack(spacing: 40) {
                    NutritionInfo(title: "Calories", value: "\(appetizer.calories)")
                    NutritionInfo(title: "Carbs", value: "\(appetizer.carbs)")
                    NutritionInfo(title: "Protein", value: "\(appetizer.protein)")
                }
                
                Spacer()
                
                Button {
                    order.add(appetizer)
                    isShowingDetail = false
                } label: {
                    Text("\(appetizer.price)₴ - Add To Order")
                }
                .modifier(StandardButtonStyle())
                .padding(.bottom, 30)
            }
        }
        .frame(width: 300, height: 520)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 6)
        .overlay(
            Button {
                isShowingDetail = false
            } label: {
                XDismissButton()
            }, alignment: .topTrailing
        )
    }
}

#Preview {
    AppetizerDetailView(appetizer: MockData.sampleAppetizer, isShowingDetail: .constant(true))
}

struct NutritionInfo: View {
    let title: String
    let value: String
    
    var body: some View {
        VStack(spacing: 5) {
            Text(title)
                .font(.caption)
                .fontWeight(.bold)
            
            Text(value)
                .foregroundColor(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}
