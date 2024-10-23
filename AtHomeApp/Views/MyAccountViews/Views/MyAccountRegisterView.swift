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
    
    var body: some View {
        Spacer()
        VStack(spacing: 20) {
            HStack {
                Image(systemName: "person.fill")
                    .foregroundStyle(.ahDarkBlue)
                    .padding(.leading, 10)
                TextField("Nom", text: $name)
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
                TextField("Email", text: $email)
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
                SecureField("Mot de passe", text: $password)
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
                
                SecureField("Confirmer mot de passe", text: $confirmPassword )
                    .font(.system(size: 18, weight: .regular))
                    .padding(10)
            }
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(lineWidth: 1)
                    .foregroundStyle(.ahDarkBlue)
            )
        }
        .padding()
        Spacer()
    }
    
    func registerUser() {
        // Basic validation example
        guard !name.isEmpty, !email.isEmpty, !password.isEmpty, password == confirmPassword else {
            print("Error: Invalid input")
            return
        }
        
        // Create a new user object
        _ = User(name: name, email: email, password: password, best_streak: 0, actual_streak: 0)
        
        // Now add logic to send `newUser` to the backend using `userViewModel`
        // For example, you can add a function in your ViewModel to handle user registration
    }

}

#Preview {
    MyAccountRegisterView()
}
