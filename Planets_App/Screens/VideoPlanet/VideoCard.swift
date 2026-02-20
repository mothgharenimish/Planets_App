//
//  VideoCard.swift
//  Planets_App
//
//  Created by Nimish Mothghare on 21/02/26.
//

import SwiftUI
import AVKit

struct VideoCard: View {
    
    let video : PlanetVideoElement
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10) {
            
            VideoPlayer(player: AVPlayer(url: URL(string: video.videoURL)!))
                           .frame(height: 200)
                           .cornerRadius(12)
                           .padding(.horizontal,8)
                           .padding(.top,8)
                           .padding(.bottom,8)
                          
        }
        
        .background(.white)
                .cornerRadius(15)
                .shadow(radius: 5)
                .padding(.leading,10)
                .padding(.trailing,10)
                .padding(.top,10)
    }
}

#Preview {
    VideoCard(video: PlanetVideoElement(id: "", planetName: "Earth", videoURL: "http://192.168.1.22:8080/myproject/SolarSystem/videos/earth.mp4", videoSize: "", videoType: ""))
}
