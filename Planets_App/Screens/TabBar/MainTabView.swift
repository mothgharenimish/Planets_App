//
//  MainTabView.swift
//  Planets_App
//
//  Created by Nimish Mothghare on 20/02/26.
//

import SwiftUI

struct MainTabView: View {
    

    var body: some View {
        
        TabView {
            
            Home_Screen()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
        
            VideoPlanet()
                .tabItem {
                    Image(systemName: "video")
                    Text("Video")
                }
        }
    }
}

#Preview {
    MainTabView()
}
