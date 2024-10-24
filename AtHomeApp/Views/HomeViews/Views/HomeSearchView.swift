//
//  HomeSearchView.swift
//  AtHome_PersonalTest
//
//  Created by Apprenant 141 on 21/10/2024.
//

import SwiftUI

struct HomeSearchView: View {
    @State private var searchText = ""
    
    @ObservedObject var objectViewModel = ObjectViewModel()
    
    var body: some View {
        ScrollView{
            TextField("Rechercher un objet...", text: $searchText)
                .padding(7)
                .padding(.horizontal, 25)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding(.horizontal, 10)
            ForEach(objectViewModel.objects) { object in
                if searchText.isEmpty {
                    ButtonObjectExView(rightOrLeft: true, object: object)
                } else if object.name.lowercased().contains(searchText.lowercased()) {
                    ButtonObjectExView(rightOrLeft: true, object: object)
                }
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
