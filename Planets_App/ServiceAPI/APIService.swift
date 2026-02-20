//
//  APIService.swift
//  Planets_App
//
//  Created by Nimish Sharad Mothghare on 13/02/25.
//

import Foundation
import Alamofire

class APIService {
    static let shared = APIService()
    
    private init() {}

    func fetchPlanets(completion: @escaping (Result<[Datum], Error>) -> Void) {
        let url = "http://192.168.1.22:8080/myproject/Planets/planetread.php"
        
        AF.request(url).validate().responseDecodable(of: PlanetData.self) { response in
            switch response.result {
            case .success(let planetData):
                completion(.success(planetData.data))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    func fetchvideoplanets(completion: @escaping (Result<[PlanetVideoElement], Error>) -> Void) {
        
        let url = "http://192.168.1.22:8080/myproject/SolarSystem/readplanetvideo.php"
        
        AF.request(url).validate().responseDecodable(of: PlanetVideo.self) { response in
            
            switch response.result {
                
            case .success(let planetvideodata):
                completion(.success(planetvideodata.self))
                print("The data of the planet video data is \(planetvideodata)")
            case .failure(let error):
                completion(.failure(error))
            }
            
        }
    }
}
