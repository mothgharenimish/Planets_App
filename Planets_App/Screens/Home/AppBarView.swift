//
//  AppBarView.swift
//  Planets_App
//
//  Created by Nimish Sharad Mothghare on 06/02/25.
//

import SwiftUI

struct AppBarView: View {
    var body: some View {
        HStack {
                    Button(action: {
                        // TODO: Add menu toggle action
                    }) {
                        Image("hamburger")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24)
                            .padding(10)
                            .background(Color.gray.opacity(0.1))
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                    .accessibilityLabel("Menu Button")
                    
                    Spacer()
                }
                .padding(.horizontal)
                .frame(height: 50)
    }
}

#Preview {
    AppBarView()
}
