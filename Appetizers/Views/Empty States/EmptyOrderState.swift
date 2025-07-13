//
//  EmptyOrderState.swift
//  Appetizers
//
//  Created by Дмитро Сокотнюк on 12.07.2025.
//

import SwiftUI

struct EmptyOrderState: View {
    
    let imageName: ImageResource
    let message: String
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundStyle(.secondary)
                    .multilineTextAlignment(.center)
                    .padding()
            }
            .offset(y: -50)
        }
    }
}

#Preview {
    EmptyOrderState(imageName: .emptyOrder, message: "This is our test message")
}
