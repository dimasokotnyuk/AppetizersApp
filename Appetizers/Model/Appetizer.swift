//
//  Appetizer.swift
//  Appetizers
//
//  Created by Дмитро Сокотнюк on 10.07.2025.
//

import Foundation

struct Appetizer: Codable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Int
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

#if DEBUG
struct MockData {
    static let sampleAppetizer = Appetizer(id: 1,
                                           name: "Тестова закуска",
                                           description: "Це опис для тестування.",
                                           price: 10,
                                           imageURL: "",
                                           calories: 100,
                                           protein: 10,
                                           carbs: 10)
    
    static let appetizersList = Array(repeating: sampleAppetizer, count: 10)
    
    static let orderItemOne = Appetizer(id: 1,
                                           name: "Тестова закуска",
                                           description: "Це опис для тестування.",
                                           price: 10,
                                           imageURL: "",
                                           calories: 100,
                                           protein: 10,
                                           carbs: 10)
    
    static let orderItemTwo = Appetizer(id: 2,
                                           name: "Тестова закуска2",
                                           description: "Це опис для тестування.",
                                           price: 10,
                                           imageURL: "",
                                           calories: 100,
                                           protein: 10,
                                           carbs: 10)
    
    static let orderItemThree = Appetizer(id: 3,
                                           name: "Тестова закуска3",
                                           description: "Це опис для тестування.",
                                           price: 10,
                                           imageURL: "",
                                           calories: 100,
                                           protein: 10,
                                           carbs: 10)
    
    static let orderItemFour = Appetizer(id: 4,
                                           name: "Тестова закуска4",
                                           description: "Це опис для тестування.",
                                           price: 10,
                                           imageURL: "",
                                           calories: 100,
                                           protein: 10,
                                           carbs: 10)
    
    static let orderList = [orderItemOne, orderItemTwo, orderItemThree, orderItemFour]

}
#endif


