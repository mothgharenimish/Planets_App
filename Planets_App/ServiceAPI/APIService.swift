//
//  APIService.swift
//  Planets_App
//
//  Created by Nimish Sharad Mothghare on 13/02/25.
//

import Foundation

import Foundation
import Alamofire

class APIService {
    static let shared = APIService()
    
    private init() {}

    func fetchPlanets(completion: @escaping (Result<[Datum], Error>) -> Void) {
        let url = "http://192.168.1.5:8080/myproject/Planets/planetread.php"
        
        AF.request(url).validate().responseDecodable(of: PlanetData.self) { response in
            switch response.result {
            case .success(let planetData):
                completion(.success(planetData.data))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
