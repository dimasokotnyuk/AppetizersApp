//
//  OrderView.swift
//  Appetizers
//
//  Created by Дмитро Сокотнюк on 09.07.2025.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: order.deleteItems)
                    }
                    .listStyle(.plain)
                    
                    Button {
                        
                    } label: {
                        Text("\(order.totalPrice)₴ - Place Order")
                    }
                    .modifier(StandardButtonStyle())
                    .padding(.bottom)
                }
                
                if order.items.isEmpty {
                    EmptyOrderState(imageName: .emptyOrder, message: "You have no items in your order.\nPlease add and appetizer!")
                }
            }
            .navigationTitle("🧾Order")
        }
    }
    
    
}

#Preview {
    OrderView()
        .environmentObject(Order())
}
