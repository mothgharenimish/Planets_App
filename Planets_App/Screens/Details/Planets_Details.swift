//
//  Planets_Details.swift
//  Planets_App
//
//  Created by Nimish Sharad Mothghare on 12/02/25.
//

import SwiftUI
import Kingfisher

struct Planets_Details: View {
    
    let planet : Datum
    var body: some View {
        
        ZStack {
            
            LinearGradient(gradient: Gradient(colors: [
                Color(UIColor(hex: "#291111")!),
                Color(UIColor(hex: "#682b2b")!),
                Color(UIColor(hex: "#ed6262")!)
            ]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea()
            ScrollView  {
                KFImage(URL(string: planet.planetImagePath))
                                  .resizable()
                                  .aspectRatio(1, contentMode: .fit)
                
                VStack(alignment: .leading) {
                    DescriptionView(planet: planet)
                }
            }
            .edgesIgnoringSafeArea(.top)
            
        }
    }
}

#Preview {
    Planets_Details(planet: Datum(id: "", planetName: "", planetImagePath: "", planetDescription: "", planetWeight: "", planetGases:PlanetGases(nitrogenN: "", planetGasesOxygenO: "", argonAr: "", carbonDioxideCO: "", carbonMonoxideCO: "", heliumHe: "", sodiumNa: "", oxygenO: "", hydrogenH: "", methaneCH: "", molecularHydrogenH: ""), planetColor: "", planetHistory: "", planetTemperature: "", planetDiameter: "", createdAt: ""))
}
