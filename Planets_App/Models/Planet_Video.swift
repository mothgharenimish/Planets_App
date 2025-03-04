//
//  Planet_Video.swift
//  Planets_App
//
//  Created by Nimish Sharad Mothghare on 05/02/25.
//

import Foundation

// MARK: - PlanetVideoElement
struct PlanetVideoElement: Codable {
    let id, planetName: String
    let videoURL: String
    let videoSize, videoType: String

    enum CodingKeys: String, CodingKey {
        case id
        case planetName = "planet_name"
        case videoURL = "video_url"
        case videoSize = "video_size"
        case videoType = "video_type"
    }
}

typealias PlanetVideo = [PlanetVideoElement]
