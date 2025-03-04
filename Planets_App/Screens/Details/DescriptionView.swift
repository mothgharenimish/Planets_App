//
//  DescriptionView.swift
//  Planets_App
//
//  Created by Nimish Sharad Mothghare on 14/02/25.
//

import SwiftUI

struct DescriptionView: View {
    var body: some View {
        
        VStack(alignment: .leading){
            
            Text("Earth")
                .font(.title)
                .fontWeight(.bold)
            
            Text("Description")
                .fontWeight(.medium)

            
            
        }
    }
}

#Preview {
    DescriptionView()
}
