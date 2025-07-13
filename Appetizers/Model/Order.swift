//
//  Order.swift
//  Appetizers
//
//  Created by Дмитро Сокотнюк on 12.07.2025.
//

import SwiftUI

final class Order: ObservableObject {
    
    @Published var items: [Appetizer] = []
    
    var totalPrice: Int {
        items.reduce(0) {
            $0 + $1.price
        }
    }
    
    func add(_ appetizer: Appetizer) {
        items.append(appetizer)
    }
    
    func deleteItems(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
}
