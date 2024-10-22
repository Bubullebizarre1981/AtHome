//
//  ContentView.swift
//  AtHomeApp
//
//  Created by Apprenant 171 on 09/10/2024.
//

import SwiftUI
import SwiftData

//struct ContentView: View {
//    var body: some View {
//        Text("Hello World !")
//    }
//}
//
//#Preview {
//    ContentView()
//}

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            Group {
                HomeHouseView()
                    .tabItem {
                        Label("Recherche", systemImage: "house")
                    }
                ObjectsView()
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
    }
}

#Preview {
    ContentView()
        .environmentObject(ObjectViewModel())
        .environmentObject(UserViewModel())
}
