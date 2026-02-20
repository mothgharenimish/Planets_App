//
//  DescriptionView.swift
//  Planets_App
//
//  Created by Nimish Sharad Mothghare on 14/02/25.
//

import SwiftUI

struct DescriptionView: View {
    
    let planet : Datum
    @State var isViewed = false
    @State private var planetgases: [Datum] = []


    
    var body: some View {

        VStack(alignment: .leading,spacing: 4) {

            Text(planet.planetName)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)

    
            Button {
                    //added
                    isViewed.toggle()
                } label: {
                    Text(planet.planetDescription)
                        .foregroundColor(.white)
                        .font(.system(size: 15))
                        .multilineTextAlignment(.leading)
                        .lineLimit(isViewed ? nil : 10) //added
                }
            
            HStack(spacing: 12) {
                
                Image("icons8-weight-30")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 22, height: 22)
                
                Text(planet.planetWeight)
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(.white)

                Spacer()
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 10)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.black.opacity(0.8))
            )
            .padding(.top,10)
            

            HStack(spacing: 12) {
                
                Image("icons8-diameter-30")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 22, height: 22)
                
                Text(planet.planetDiameter)
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(.white)

                Spacer()
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 10)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.black.opacity(0.8))
            )
            .padding(.top,10)
            
            HStack(spacing: 12) {
                
                Image("icons8-temperature-32")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 22, height: 22)
                
                Text(planet.planetTemperature)
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(.white)

                Spacer()
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 10)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.black.opacity(0.8))
            )
            .padding(.top,10)
            
            
            HStack(spacing: 0) {
                
                ForEach(planetgases.indices, id: \.self) { index in
                    
                    let planetgas = planetgases[index]
                    
                    
                    Text(planetgas.planetGases.carbonDioxideCO!)
                }
            }
            
        }
        .frame(maxWidth: .infinity, alignment: .leading)  
        .padding(.horizontal)
        .padding(.top,0)
        
        .onAppear {
            print("Planet Name:", planet.planetName)
            print("Description:", planet.planetDescription)
            print("Weight:", planet.planetWeight)
            print("Diameter:", planet.planetDiameter)
            print("Temperature:", planet.planetTemperature)
            print("Color:", planet.planetColor)
            print("History:", planet.planetHistory)
            print("Created At:", planet.createdAt)

            print("---- Planet Gases ----")
            print("Nitrogen:", planet.planetGases.nitrogenN ?? "N/A")
            print("Oxygen (O₂):", planet.planetGases.planetGasesOxygenO ?? "N/A")
            print("Argon:", planet.planetGases.argonAr ?? "N/A")
            print("Carbon Dioxide:", planet.planetGases.carbonDioxideCO ?? "N/A")
            print("Carbon Monoxide:", planet.planetGases.carbonMonoxideCO ?? "N/A")
            print("Helium:", planet.planetGases.heliumHe ?? "N/A")
            print("Sodium:", planet.planetGases.sodiumNa ?? "N/A")
            print("Oxygen (O):", planet.planetGases.oxygenO ?? "N/A")
            print("Hydrogen:", planet.planetGases.hydrogenH ?? "N/A")
            print("Methane:", planet.planetGases.methaneCH ?? "N/A")
            print("Molecular Hydrogen:", planet.planetGases.molecularHydrogenH ?? "N/A")
        }

    }
}

#Preview {
    DescriptionView(planet: Datum(id: "", planetName: "", planetImagePath: "", planetDescription: "", planetWeight: "", planetGases:PlanetGases(nitrogenN: "", planetGasesOxygenO: "", argonAr: "", carbonDioxideCO: "", carbonMonoxideCO: "", heliumHe: "", sodiumNa: "", oxygenO: "", hydrogenH: "", methaneCH: "", molecularHydrogenH: ""), planetColor: "", planetHistory: "", planetTemperature: "", planetDiameter: "", createdAt: ""))
}
