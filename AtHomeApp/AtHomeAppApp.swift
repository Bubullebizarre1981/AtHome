//
//  AtHomeAppApp.swift
//  AtHomeApp
//
//  Created by Apprenant 171 on 09/10/2024.
//

import SwiftUI
import SwiftData

@main
struct AtHomeAppApp: App {
    @StateObject private var userViewModel = UserViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(userViewModel)
        }
    }
}
