//
//  RocketService.swift
//  spaceXApp
//
//  Created by Nino Kurshavishvili on 13.04.25.
//


import Foundation

final class RocketService: APIServiceProtocol {
    
    private let baseURL = "https://api.spacexdata.com/v4/rockets"
    
    func fetchRockets() async throws -> [Rocket] {
        guard let url = URL(string: baseURL) else {
            throw URLError(.badURL)
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse,
              (200..<300).contains(httpResponse.statusCode) else {
            throw URLError(.badServerResponse)
        }
        
        return try JSONDecoder().decode([Rocket].self, from: data)
    }
}
