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


struct GasStat :Identifiable {
    let id = UUID()
    let name : String
    let value : Double
}

func getGasState(from gases : PlanetGases) -> [GasStat] {
    
    return [
        
               GasStat(name: "N₂", value: Double(gases.nitrogenN ?? "0") ?? 0),
               GasStat(name: "O₂", value: Double(gases.planetGasesOxygenO ?? "0") ?? 0),
               GasStat(name: "Ar", value: Double(gases.argonAr ?? "0") ?? 0),
               GasStat(name: "CO₂", value: Double(gases.carbonDioxideCO ?? "0") ?? 0),
               GasStat(name: "CO", value: Double(gases.carbonMonoxideCO ?? "0") ?? 0),
               GasStat(name: "He", value: Double(gases.heliumHe ?? "0") ?? 0),
               GasStat(name: "Na", value: Double(gases.sodiumNa ?? "0") ?? 0),
               GasStat(name: "O", value: Double(gases.oxygenO ?? "0") ?? 0),
               GasStat(name: "H", value: Double(gases.hydrogenH ?? "0") ?? 0),
               GasStat(name: "CH₄", value: Double(gases.methaneCH ?? "0") ?? 0),
               GasStat(name: "H₂", value: Double(gases.molecularHydrogenH ?? "0") ?? 0)
    ]
    
        .filter { $0.value > 0 }

    
}
