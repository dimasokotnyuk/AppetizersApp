//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Дмитро Сокотнюк on 11.07.2025.
//

import SwiftUI

@MainActor
final class AppetizerListViewModel: ObservableObject {
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading: Bool = false
    @Published var isShowingDetail = false
    @Published var selectedAppetizer: Appetizer?
    
    func getAppetizers() {
        isLoading = true
        Task {
            do {
                appetizers = try await NetworkManager.shared.getAppetizers()
                isLoading = false
            } catch {
                if let apError = error as? APError {
                    switch apError {
                    case .invalidURL:
                        alertItem = AlertContext.invalidURL
                    case .invalidResponse:
                        alertItem = AlertContext.invalidResponse
                    case .invalidData:
                        alertItem = AlertContext.invalidData
                    case .unabaleToComplete:
                        alertItem = AlertContext.unableToComplete
                    }
                } else {
                    alertItem = AlertContext.genericError
                }
                isLoading = false
            }
        }
    }
}
