//
//  Home_Screen.swift
//  Planets_App
//
//  Created by Nimish Sharad Mothghare on 05/02/25.
//

import SwiftUI
import Alamofire
import SwiftyJSON
import Kingfisher

struct Home_Screen: View {
    
    @State private var search: String = ""
    @State private var planets: [Datum] = []

    var subtitles : [String] = ["Our Home Planet","The Swift Messenger","The Veiled Inferno","The Red Warrior","The Giant Guardian","The Ringed Wonder","The Windy Blue Giant"]

    var body: some View {
        NavigationView {
                  ZStack {
                      LinearGradient(gradient: Gradient(colors: [
                          Color(UIColor(hex: "#291111")!),
                          Color(UIColor(hex: "#682b2b")!),
                          Color(UIColor(hex: "#ed6262")!)
                      ]), startPoint: .topLeading, endPoint: .bottomTrailing)
                      .ignoresSafeArea()
                      
                      ScrollView (showsIndicators: false){
                          VStack (alignment: .leading){
                              AppBarView()
                              TagLineView()
                                  .padding()
                              
                              SearchBar(search: $search)
                              
                              Text("Most Popular")
                                  .font(.custom("Times New Roman Bold", size: 27))
                                  .foregroundColor(Color(UIColor(hex: "#7ec88d")!))
                                  .padding(.horizontal)
                                  .padding(.top,15)
                              
                              ScrollView(.horizontal, showsIndicators: false) {
                                  HStack(spacing: 0) {
                                      ForEach(planets.indices, id: \.self) { index in
                                          let planet = planets[index]
                                          let subtitle = index < subtitles.count ? subtitles[index] : "A Mysterious World"
                                          
                                          PlanetsCard(
                                              imageUrl: planet.planetImagePath,
                                              size: 210,
                                              title: planet.planetName,
                                              subtitle: subtitle
                                          )
                                      }
                                  }
                                  .padding(.horizontal, 0)
                              }
                              .padding(.top,0)
                              
                              Text("You May Also Like")
                                  .font(.custom("Times New Roman Bold", size: 27))
                                  .foregroundColor(Color(UIColor(hex: "#7ec88d")!))
                                  .padding(.horizontal)
                                  .padding(.top,15)
                              
                              ScrollView(.horizontal, showsIndicators: false) {
                                  HStack(spacing: 0) {
                                      ForEach(planets.indices, id: \.self) { index in
                                          let planet = planets[index]
                                              let subtitle = index < subtitles.count ? subtitles[index] : "A Mysterious World"

                                          NavigationLink {
                                              Planets_Details(planet: planet)
                                          } label: {
                                              PlanetsCard(
                                                  imageUrl: planet.planetImagePath,
                                                  size: 210,
                                                  title: planet.planetName,
                                                  subtitle: subtitle
                                              )
                                          }
                                         
                                      }
                                  }
                                  .padding(.horizontal, 0)
                              }

                              .padding(.top,0)
                          }
                      }
                  }
              }
              .navigationBarBackButtonHidden(true)
              .onAppear {
                  APIService.shared.fetchPlanets { result in
                      switch result {
                      case .success(let data):
                          self.planets = data
                          print("The planet data \(data)")
                      case .failure(let error):
                          print("Error fetching planets: \(error.localizedDescription)")
                      }
                  }
              }
    }
}

#Preview {
    Home_Screen()
}
