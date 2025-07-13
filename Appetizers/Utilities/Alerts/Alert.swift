//
//  Alert.swift
//  Appetizers
//
//  Created by Дмитро Сокотнюк on 11.07.2025.
//

import SwiftUI

struct AlertItem: Identifiable{
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButtonText: Alert.Button
}

struct AlertContext {
    //MARK - Network Alerts
    static let invalidData = AlertItem(title: Text("Server Error"), message: Text("The data received from the server was invalid. Please contact support."), dismissButtonText: .default(Text("Ok")))
    static let invalidResponse = AlertItem(title: Text("Server Error"), message: Text("Invalid response from the server. Please try again later."), dismissButtonText: .default(Text("Ok")))
    static let invalidURL = AlertItem(title: Text("Server Error"), message: Text("There was an issue connecting to the server. If this persists, please contact support."), dismissButtonText: .default(Text("Ok")))
    static let unableToComplete = AlertItem(title: Text("Server Error"), message: Text("Unable to complete your request at this time. Please check your internet connection and try again later."), dismissButtonText: .default(Text("Ok")))
    
    //MARK - Account Alerts
    static let invalidForm = AlertItem(title: Text("Invalid Form"), message: Text("Please ensure all fields are filled in the form have been filled out."), dismissButtonText: .default(Text("Ok")))
    static let invalidEmail = AlertItem(title: Text("Invalid Email"), message: Text("Please ensure your email is correct."), dismissButtonText: .default(Text("Ok")))
    
    static let userSaveSuccess = AlertItem(title: Text("Profile Saved"), message: Text("Your profile information has been saved successfully."), dismissButtonText: .default(Text("Ok")))
    static let invalidUserData = AlertItem(title: Text("Profile Error"), message: Text("There was an error saving or retrieving your profile information. Please try again later."), dismissButtonText: .default(Text("Ok")))
    
    static let genericError = AlertItem(title: Text("Server error"), message: Text("The request failed. Please check your internet connection or try again later."), dismissButtonText: .default(Text("Ok")))
}

