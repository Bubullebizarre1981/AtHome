//
//  MyAccountLoginView.swift
//  AtHomeApp
//
//  Created by Apprenant 166 on 21/10/2024.
//


import SwiftUI

struct MyAccountLoginView: View {
    @State private var name = ""
    @State private var password = ""
    @State private var souvenirDeMoi = false
    @State private var navigateToBadges = false
    
    var userViewModel = UserViewModel()
    
    var body: some View {
        Spacer()
        VStack(spacing: 20) {
            HStack {
                Image(systemName: "person.fill")
                    .foregroundStyle(.ahDarkBlue)
                    .padding(.leading, 10)
                    .accessibilityHidden(true)
                TextField("Nom", text: $name)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .font(.system(size: 18, weight: .regular))
                    .padding(10)
            }
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(lineWidth: 1)
            )
            HStack {
                Image(systemName: "lock.fill")
                    .foregroundStyle(.ahDarkBlue)
                    .padding(.leading, 10)
                    .accessibilityHidden(true)
                SecureField("Mot de passe", text: $password)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .padding(10)
            }
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(lineWidth: 1)
            )
            HStack {
                Toggle("Se souvenir de moi", isOn: $souvenirDeMoi)
                    .toggleStyle(CircularToggleStyle())
            }
            Spacer()
            Button(action: {
                
            }) {
                Text("Confirmer")
                    .font(.system(size: 24))
                    .foregroundStyle(.white)
                    .padding(12)
                    .frame(maxWidth: .infinity)
                    .background(Color.ahDarkBlue)
                    .cornerRadius(10)
            }
            .padding(.horizontal)
            .padding(.bottom, 60)
            .navigationDestination(isPresented: $navigateToBadges) {
                MyBadgeView()
            }
        }
        .foregroundStyle(.ahDarkBlue)
        .padding()
        Spacer()
        
    }
}

#Preview {
    MyAccountLoginView()
}
