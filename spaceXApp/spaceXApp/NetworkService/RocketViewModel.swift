//
//  RocketViewModel.swift
//  spaceXApp
//
//  Created by Nino Kurshavishvili on 13.04.25.
//


import Foundation

@MainActor
final class RocketViewModel: ObservableObject {
    
    @Published var rockets: [Rocket] = []
    @Published var isLoading = false
    @Published var errorMessage: String? = nil
    
    private let service: APIServiceProtocol
    
    init(service: APIServiceProtocol = RocketService()) {
        self.service = service
    }
    
    func loadRockets() async {
        isLoading = true
        errorMessage = nil
        
        do {
            rockets = try await service.fetchRockets()
        } catch {
            errorMessage = error.localizedDescription
        }
        
        isLoading = false
    }
}
