//
//  SearchBar.swift
//  Planets_App
//
//  Created by Nimish Sharad Mothghare on 06/02/25.
//

import SwiftUI

struct SearchBar: View {
    @Binding var search: String

    var body: some View {
        
        HStack {
            HStack {
                Image("search")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                    .padding(.trailing, 8)
                TextField("Search Planets", text: $search)
            }
            .padding(.all, 20)
            .background(Color.white)
            .cornerRadius(10.0)
            .padding(.trailing, 8)
            
        }
        .padding(.horizontal)
        
        
    }
}

#Preview {
    SearchBar(search: .constant(""))
}
