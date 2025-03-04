//
//  Planets_Details.swift
//  Planets_App
//
//  Created by Nimish Sharad Mothghare on 12/02/25.
//

import SwiftUI

struct Planets_Details: View {
    var body: some View {
        
        ZStack {
            
            Color(UIColor(hex: "#f1f0eb")!)

            ScrollView  {                
                    Image("earth")
                        .resizable()
                        .aspectRatio(1,contentMode: .fit)
                        .edgesIgnoringSafeArea(.top)
                
                DescriptionView()
            }
            .edgesIgnoringSafeArea(.top)
            
        }
    }
}

#Preview {
    Planets_Details()
}
