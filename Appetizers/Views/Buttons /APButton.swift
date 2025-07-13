//
//  APButton.swift
//  Appetizers
//
//  Created by Дмитро Сокотнюк on 11.07.2025.
//

import SwiftUI

// Unused. Now use CustomModifiers

struct APButton: View {
    let title: String
    
    var body: some View {
        Text((title))
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 250, height: 50)
            .foregroundColor(.white)
            .background(.brandPrimary)
            .cornerRadius(10)
    }
}

#Preview {
    APButton(title: "test button")
}
