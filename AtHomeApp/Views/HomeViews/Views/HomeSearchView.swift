//
//  HomeSearchView.swift
//  AtHome_PersonalTest
//
//  Created by Apprenant 141 on 21/10/2024.
//

import SwiftUI

struct HomeSearchView: View {
    let arrayObjects: [String] = ["Hello", "World", "SwiftUI"]
    
    var body: some View {
        ScrollView {
            ForEach(arrayObjects, id: \.self) { object in
                ButtonObjectExView(rightOrLeft: true)
            }
        }
        .padding()
    }
}

#Preview {
    HomeSearchView()
}
