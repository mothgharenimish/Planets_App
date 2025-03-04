//
//  Planet_Model.swift
//  Planets_App
//
//  Created by Nimish Sharad Mothghare on 05/02/25.
//

import Foundation

// MARK: - PlanetData
struct PlanetData: Codable {
    let status: String
    let data: [Datum]
}

// MARK: - Datum
struct Datum: Codable,Identifiable{
    let id, planetName: String
    let planetImagePath: String
    let planetDescription, planetWeight: String
    let planetGases: PlanetGases
    let planetColor, planetHistory, planetTemperature, planetDiameter: String
    let createdAt: String

    enum CodingKeys: String, CodingKey {
        case id
        case planetName = "planet_name"
        case planetImagePath = "planet_image_path"
        case planetDescription = "planet_description"
        case planetWeight = "planet_weight"
        case planetGases = "planet_gases"
        case planetColor = "planet_color"
        case planetHistory = "planet_history"
        case planetTemperature = "planet_temperature"
        case planetDiameter = "planet_diameter"
        case createdAt = "created_at"
    }
}

// MARK: - PlanetGases
struct PlanetGases: Codable {
    let nitrogenN, planetGasesOxygenO, argonAr, carbonDioxideCO: String?
    let carbonMonoxideCO, heliumHe, sodiumNa, oxygenO: String?
    let hydrogenH, methaneCH, molecularHydrogenH: String?

    enum CodingKeys: String, CodingKey {
        case nitrogenN = "Nitrogen (N₂)"
        case planetGasesOxygenO = "Oxygen (O₂)"
        case argonAr = "Argon (Ar)"
        case carbonDioxideCO = "Carbon Dioxide (CO₂)"
        case carbonMonoxideCO = "Carbon Monoxide (CO)"
        case heliumHe = "Helium (He)"
        case sodiumNa = "Sodium (Na)"
        case oxygenO = "Oxygen (O)"
        case hydrogenH = "Hydrogen (H₂)"
        case methaneCH = "Methane (CH₄)"
        case molecularHydrogenH = "Molecular Hydrogen (H₂)"
    }
}


