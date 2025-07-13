//
//  NetworkManager.swift
//  Appetizers
//
//  Created by Дмитро Сокотнюк on 11.07.2025.
//

import Foundation
import UIKit

final class NetworkManager {
    
    static let shared = NetworkManager()
    private let cashe = NSCache<NSString, UIImage>()
    
    static let baseURL = "https://686fdba14838f58d11232646.mockapi.io"
    private let appetizerURL = baseURL + "/appetizers"
    
    private init() {}
    
    func getAppetizers() async throws -> [Appetizer] {
        guard let url = URL(string: appetizerURL) else {
            throw APError.invalidURL
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        do {
            let decoder = JSONDecoder()
            return try decoder.decode([Appetizer].self, from: data)
        } catch {
            throw APError.invalidData
        }
    }
}
