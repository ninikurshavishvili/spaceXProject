//
//  Rocket.swift
//  spaceXApp
//
//  Created by Nino Kurshavishvili on 13.04.25.
//


import Foundation

struct Rocket: Codable, Identifiable {
    let id: String
    let name: String
    let type: String
    let active: Bool
    let stages: Int
    let boosters: Int
    let cost_per_launch: Int
    let success_rate_pct: Int
    let first_flight: String
    let country: String
    let company: String
    let wikipedia: String
    let description: String
    let height: Dimension
    let diameter: Dimension
    let mass: Mass
    let first_stage: Stage
    let second_stage: Stage
    let engines: Engine
    let landing_legs: LandingLegs
    let payload_weights: [Payload]
    let flickr_images: [String]
}

struct Dimension: Codable {
    let meters: Double?
    let feet: Double?
}

struct Mass: Codable {
    let kg: Int?
    let lb: Int?
}

struct Stage: Codable {
    let reusable: Bool?
    let engines: Int?
    let fuel_amount_tons: Double?
    let burn_time_sec: Int?
    let thrust_sea_level: Thrust?
    let thrust_vacuum: Thrust?
    let payloads: PayloadOptions? 
}

struct Thrust: Codable {
    let kN: Int?
    let lbf: Int?
}

struct PayloadOptions: Codable {
    let option_1: String?
    let composite_fairing: Fairing?
}

struct Fairing: Codable {
    let height: Dimension?
    let diameter: Dimension?
}

struct Engine: Codable {
    let number: Int
    let type: String
    let version: String
    let layout: String?
    let engine_loss_max: Int?
    let propellant_1: String
    let propellant_2: String
    let thrust_sea_level: Thrust
    let thrust_vacuum: Thrust
    let thrust_to_weight: Double
}

struct LandingLegs: Codable {
    let number: Int
    let material: String?
}

struct Payload: Codable {
    let id: String?
    let name: String?
    let kg: Int?
    let lb: Int?
}
