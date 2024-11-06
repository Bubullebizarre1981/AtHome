//
//  MyAccountView.swift
//  AtHomeApp
//
//  Created by Apprenant 166 on 21/10/2024.
//

import SwiftUI

struct MyAccountView: View {
    @State private var selectedView = 0
    @EnvironmentObject var userViewModel : UserViewModel
    
    var body: some View {
        NavigationStack {
            if !userViewModel.isLoggedIn {
                VStack {
                    Text("Authentification")
                        .font(.system(size: 38))
                        .foregroundColor(Color.ahDarkBlue)
                        .padding(.top, 30)
                    AuthentificationSelectionExView(selection: $selectedView)
                        .padding()
                    if selectedView == 0 {
                        MyAccountRegisterView()
                    } else {
                        MyAccountLoginView()
                    }
                }
            } else {
                MyBadgeView()
            }
        }
        .onAppear(perform: {
            userViewModel.verifyIfLoggedIn()
        })
    }
}

#Preview {
    MyAccountView()
        .environmentObject(UserViewModel())
}
