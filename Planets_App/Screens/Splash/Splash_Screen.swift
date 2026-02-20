//
//  Splash_Screen.swift
//  Planets_App
//
//  Created by Nimish Sharad Mothghare on 05/02/25.
//

import SwiftUI

struct Splash_Screen: View {
    
    @State private var isNavigated = false
    
    var body: some View {
        
        NavigationStack {
            ZStack {
                // Background Image
                Image("jklop")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                
                // Content Stack
                VStack() {
                    // Leading-Aligned Text
                    Text("Explore the\nSolar System")
                        .font(Font.custom("American Typewriter", size: 51).bold())
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
                        .foregroundColor(.orange)
                        .multilineTextAlignment(.leading)
                        .shadow(color: .black, radius: 5, x: 0, y: 2)
                        .padding(.top, 100)
                        .padding(.horizontal, 30)
                        .padding(.bottom,10)
                    
                    
                    // Bottom Button
                    Button(action: {
                        isNavigated = true  // Trigger navigation
                        print("Get Started tapped!")
                    }) {
                        Text("Explore Solar System")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .frame(width: 370, height: 60)
                            .background(Color.brown.opacity(0.9))
                            .cornerRadius(12)
                            .shadow(radius: 10)
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(.horizontal, 30)
                    .padding(.bottom, 60)
                }
                .navigationDestination(isPresented: $isNavigated) {
                    MainTabView() // Destination screen
                        .navigationBarBackButtonHidden(true)

                    
                }
            }
        }
    }
}

#Preview {
    Splash_Screen()
}
