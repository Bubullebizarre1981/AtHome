//
//  HomeSearchView.swift
//  AtHome_PersonalTest
//
//  Created by Apprenant 141 on 21/10/2024.
//

import SwiftUI

struct HomeSearchView: View {
    @ObservedObject var objectViewModel = ObjectViewModel()
    
    var body: some View {
        ScrollView {
            ForEach(objectViewModel.objects) { object in
                ButtonObjectExView(rightOrLeft: true)
            }
        }
        .onAppear(perform: {
            objectViewModel.fetchObjects()
        })
    }
}

#Preview {
    HomeSearchView()
}
