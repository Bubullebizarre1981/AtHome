//
//  ContentView.swift
//  AtHomeApp
//
//  Created by Apprenant 171 on 09/10/2024.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var userViewModel : UserViewModel
    
    var body: some View {
        TabView {
            Group {
                HomePickerView()
                    .tabItem {
                        Label("Recherche", systemImage: "house")
                    }
                GameView()
                    .tabItem {
                        Label("Jeux", systemImage: "arcade.stick")
                    }
                MyAccountView()
                    .tabItem {
                        Label("Profil", systemImage: "person")
                    }
            }
            .toolbarBackground(Color("AH_verylightBlue"), for: .tabBar)
            .toolbarBackground(.visible, for: .tabBar)
        }
        .onAppear(perform: {
            userViewModel.verifyIfLoggedIn()
        })
    }
}

#Preview {
    ContentView()
        .environmentObject(ObjectViewModel())
        .environmentObject(UserViewModel())
}
