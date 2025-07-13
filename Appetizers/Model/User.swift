//
//  User.swift
//  Appetizers
//
//  Created by Дмитро Сокотнюк on 12.07.2025.
//

import Foundation

struct User: Codable {
    var firstName: String       = ""
    var lastName: String        = ""
    var email: String           = ""
    var birthday: Date          = Date()
    var extraNapkins: Bool      = false
    var frequentRefill: Bool    = false
}
