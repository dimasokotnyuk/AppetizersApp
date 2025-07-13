//
//  AppetizerList.swift
//  Appetizers
//
//  Created by Дмитро Сокотнюк on 09.07.2025.
//

import SwiftUI

struct AppetizerListView: View {
    @StateObject var viewModel = AppetizerListViewModel()
    
    var body: some View {
        ZStack {
            NavigationStack {
                List(viewModel.appetizers) { appetizer in
                    AppetizerListCell(appetizer: appetizer)
                        .onTapGesture {
                            viewModel.selectedAppetizer = appetizer
                            viewModel.isShowingDetail = true
                        }
                }
                .listStyle(.plain)
                .disabled(viewModel.isShowingDetail)
                .navigationTitle("🌮Appetizers")
            }
            .blur(radius: viewModel.isShowingDetail ? 10 : 0)
            .task {
                viewModel.getAppetizers()
            }
            
            if viewModel.isShowingDetail {
                if let selectedAppetizer = viewModel.selectedAppetizer {
                    AppetizerDetailView(appetizer: selectedAppetizer, isShowingDetail: $viewModel.isShowingDetail)
                }
            }
            
            if viewModel.isLoading {
                LoadingView()
            }
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButtonText)
        }
    }
}

#Preview {
    AppetizerListView()
}
