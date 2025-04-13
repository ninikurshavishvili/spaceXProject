//
//  APIServiceProtocol.swift
//  spaceXApp
//
//  Created by Nino Kurshavishvili on 13.04.25.
//


import Foundation

protocol APIServiceProtocol {
    func fetchRockets() async throws -> [Rocket]
}
