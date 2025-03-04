//
//  TagLineView.swift
//  Planets_App
//
//  Created by Nimish Sharad Mothghare on 06/02/25.
//

import SwiftUI

struct TagLineView: View {
    var body: some View {
        
        Text("Let's Explore\n")
            .font(.custom("Times New Roman", size: 35))
            .foregroundColor(Color(UIColor(hex: "#7ec88d")!))
            + Text("Solar System")
            .font(.custom("Times New Roman Bold", size: 35))
            .fontWeight(.bold)
            .foregroundColor(Color(UIColor(hex: "#7ec88d")!))
    }
}

#Preview {
    TagLineView()
}
