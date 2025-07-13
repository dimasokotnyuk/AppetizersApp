//
//  CustomModifiers.swift
//  Appetizers
//
//  Created by Дмитро Сокотнюк on 12.07.2025.
//

import SwiftUI

struct StandardButtonStyle: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .controlSize(.large)
            .tint(Color.accentColor)
    }
}
