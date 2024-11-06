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
    
    var userViewModel = UserViewModel()
    
    var body: some View {
        Spacer()
        VStack(spacing: 20) {
            CustomTextFieldExView(textFieldName: "Nom", sfSymbol: "person.fill", text: $name)
            CustomTextFieldExView(textFieldName: "Email", sfSymbol: "envelope.fill", text: $email)
            CustomSecureFieldExView(textFieldName: "Mot de passe", sfSymbol: "lock.fill", text: $password)
            CustomSecureFieldExView(textFieldName: "Confirmer mot de passe", sfSymbol: "lock.fill", text: $confirmPassword)
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
                }
            }, label: {
                Text("Confirmer")
                    .font(.title2)
                    .foregroundStyle(.white)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                    )
            })
        }
        .padding()
        Spacer()
    }
}

#Preview {
    MyAccountRegisterView()
}
