//
//  MyAccountRegisterView.swift
//  AtHomeApp
//
//  Created by Apprenant 166 on 21/10/2024.
//


import SwiftUI

struct MyAccountRegisterView: View {
    @State private var name = ""
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var souvenirDeMoi = false
    
    @State var errorMessage = ""
    
    @Binding var selectedView : Int
    
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
                    .foregroundStyle(.ahDarkBlue)
            )
            HStack {
                Image(systemName: "envelope.fill")
                    .foregroundStyle(.ahDarkBlue)
                    .padding(.leading, 10)
                    .accessibilityHidden(true)
                TextField("Email", text: $email)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .font(.system(size: 18, weight: .regular))
                    .padding(10)
            }
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(lineWidth: 1)
                    .foregroundStyle(.ahDarkBlue)
            )
            HStack {
                Image(systemName: "lock.fill")
                    .foregroundStyle(.ahDarkBlue)
                    .padding(.leading, 10)
                    .accessibilityHidden(true)
                SecureField("Mot de passe", text: $password)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .font(.system(size: 18, weight: .regular))
                    .padding(10)
            }
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(lineWidth: 1)
                    .foregroundStyle(.ahDarkBlue)
            )
            HStack {
                Image(systemName: "lock.fill")
                    .foregroundStyle(.ahDarkBlue)
                    .padding(.leading, 10)
                    .accessibilityHidden(true)
                SecureField("Confirmer mot de passe", text: $confirmPassword)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .font(.system(size: 18, weight: .regular))
                    .padding(10)
            }
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(lineWidth: 1)
                    .foregroundStyle(.ahDarkBlue)
            )
            if errorMessage != "" {
                Text(errorMessage)
                    .foregroundStyle(.red)
                    .bold()
            }
            Spacer()
            Button(action: {
                if password != confirmPassword || password.isEmpty {
                    errorMessage = "Mauvaise confirmation de mot de passe"
                } else if name.isEmpty {
                    errorMessage = "Veuillez remplir le Nom"
                } else if email.isEmpty {
                    errorMessage = "Veuillez remplir l'email"
                } else {
                    userViewModel.register(name: name, email: email, password: password, confirmPassword: confirmPassword)
                    selectedView = 1
                }
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
        }
        .padding()
        Spacer()
    }
}

#Preview {
    MyAccountRegisterView(selectedView: .constant(0))
}
