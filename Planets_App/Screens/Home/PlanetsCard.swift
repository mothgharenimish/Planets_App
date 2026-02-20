//
//  PlanetsCard.swift
//  Planets_App
//
//  Created by Nimish Sharad Mothghare on 06/02/25.
//

import SwiftUI
import Alamofire
import SwiftyJSON
import Kingfisher

struct PlanetsCard: View {
       let imageUrl: String
        let size: CGFloat
        let title: String
        let subtitle: String

    
    var body: some View {
        ZStack {
            KFImage(URL(string: imageUrl))
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .overlay(
                    VStack(alignment: .leading, spacing: 5) {
                        Text(title)
                            .font(Font.custom("Times New Roman", size: 23).bold())
                            .foregroundColor(.white)
                        
                        Text(subtitle)
                            .font(Font.custom("Times New Roman", size: 18).weight(.semibold))
                            .foregroundColor(.white)
                    }
                    .padding(.leading, 10)
                    .padding(.bottom, 10),
                    alignment: .bottomLeading
                )
        }
        .frame(width: size)
        .padding()
        .cornerRadius(20.0)

        
    }
}

#Preview {
    PlanetsCard(imageUrl: "https://via.placeholder.com/200", size: 210, title: "Earth", subtitle: "Our Home Planet")
}
