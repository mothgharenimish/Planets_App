//
//  VideoPlanet.swift
//  Planets_App
//
//  Created by Nimish Mothghare on 20/02/26.
//

import SwiftUI
import Alamofire

struct VideoPlanet: View {
    
    @State var videoPlanets : [PlanetVideoElement] = []
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
            .onAppear {
                
                APIService.shared.fetchvideoplanets { results in
                    switch results {
                        
                    case .success(let data):
                        self.videoPlanets = data
                        print("The video planet data is \(data)")
                    case .failure(let error):
                        print("The error are \(error.localizedDescription)")
                    }
                    
                    
                }
                
            }
    }
}

#Preview {
    VideoPlanet()
}
