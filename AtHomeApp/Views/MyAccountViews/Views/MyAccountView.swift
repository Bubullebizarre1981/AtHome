//
//  MyAccountView.swift
//  AtHomeApp
//
//  Created by Apprenant 166 on 21/10/2024.
//


import SwiftUI

struct MyAccountView: View {
    @State private var selectedView = 0
    @State private var navigateToBadges = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Authentification")
                    .font(.system(size: 38))
                    .foregroundColor(Color.ahDarkBlue)
                    .padding(.top, 30)
                AuthentificationSelectionExView(selection: $selectedView)
                    .padding()
                if selectedView == 0 {
                    MyAccountRegisterView(selectedView : $selectedView)
                } else {
                    MyAccountLoginView()
                }
            }
            .navigationDestination(isPresented: $navigateToBadges) {
                MyBadgeView()
            }
        }
    }
}

#Preview {
    MyAccountView()
}
