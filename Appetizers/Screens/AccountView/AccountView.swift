//
//  AccountView.swift
//  Appetizers
//
//  Created by Дмитро Сокотнюк on 09.07.2025.
//

import SwiftUI

struct AccountView: View {
    
    @StateObject var viewModel = AccountViewModel()
    @FocusState private var focusedTextField: FormTextField?
    
    enum FormTextField: Hashable {
        case firstName, lastName, email
    }
    
    var body: some View {
        NavigationStack {
            
            Form {
                Section(header: Text("Personal Info")) {
                    TextField("First Name", text: $viewModel.user.firstName)
                        .focused($focusedTextField, equals: .firstName)
                        .onSubmit {
                            focusedTextField = .lastName
                        }
                        .submitLabel(.next)
                    
                    TextField("Last Name", text: $viewModel.user.lastName)
                        .focused($focusedTextField, equals: .lastName)
                        .onSubmit {
                            focusedTextField = .email
                        }
                        .submitLabel(.next)
                    
                    TextField("Email", text: $viewModel.user.email)
                        .focused($focusedTextField, equals: .email)
                        .onSubmit {
                            focusedTextField = nil
                        }
                        .submitLabel(.continue)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    
                    DatePicker("Birthday", selection: $viewModel.user.birthday, displayedComponents: .date)
                    
                    Button {
                        viewModel.saveChanges()
                        focusedTextField = nil
                    } label: {
                        Text("Save Changes")
                    }
                }
                
                Section(header: Text("Requests")) {
                    Toggle("Extra Napkins", isOn: $viewModel.user.extraNapkins)
                    Toggle("Freequent Refills", isOn: $viewModel.user.frequentRefill)
                }
                .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
            }
            .toolbar {
                if focusedTextField != nil {
                    ToolbarItem() {
                        Button {
                            focusedTextField = nil
                        } label: {
                            Image(systemName: "keyboard.chevron.compact.down")
                        }
                    }
                }
            }
            .navigationTitle("😎Account")
        }
        .onAppear {
            viewModel.retrieveUser()
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButtonText)
        }
    }
}

#Preview {
    AccountView()
}
