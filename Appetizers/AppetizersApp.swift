//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Дмитро Сокотнюк on 09.07.2025.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView()
                .environmentObject(order)
        }
    }
}
