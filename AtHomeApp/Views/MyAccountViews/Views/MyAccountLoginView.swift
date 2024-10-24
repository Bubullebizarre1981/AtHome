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
            )
            HStack {
                Image(systemName: "lock.fill")
                    .foregroundStyle(.ahDarkBlue)
                    .padding(.leading, 10)
                SecureField("Mot de passe", text: $password)
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
        }
        .foregroundStyle(.ahDarkBlue)
        .padding()
        Spacer()
    }
}

#Preview {
    MyAccountLoginView()
}
