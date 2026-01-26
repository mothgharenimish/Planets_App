//
//  DescriptionView.swift
//  Planets_App
//
//  Created by Nimish Sharad Mothghare on 14/02/25.
//

import SwiftUI

struct DescriptionView: View {
    
    let planet : Datum
    var body: some View {

        VStack(alignment: .leading) {

            Text(planet.planetName)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)

            Text("Description")
                .fontWeight(.medium)
                .foregroundColor(.white)
            
            Text(planet.planetDescription)
                .fontWeight(.medium)
                .foregroundColor(.white)
            

        }
        .frame(maxWidth: .infinity, alignment: .leading)  
        .padding(.horizontal)
    }
}

#Preview {
    DescriptionView(planet: Datum(id: "", planetName: "", planetImagePath: "", planetDescription: "", planetWeight: "", planetGases:PlanetGases(nitrogenN: "", planetGasesOxygenO: "", argonAr: "", carbonDioxideCO: "", carbonMonoxideCO: "", heliumHe: "", sodiumNa: "", oxygenO: "", hydrogenH: "", methaneCH: "", molecularHydrogenH: ""), planetColor: "", planetHistory: "", planetTemperature: "", planetDiameter: "", createdAt: ""))
}
