//
//  MyAccountLoginView.swift
//  AtHomeApp
//
//  Created by Apprenant 166 on 21/10/2024.
//

import SwiftUI

struct MyAccountLoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    @EnvironmentObject var userViewModel : UserViewModel
    
    var body: some View {
        Spacer()
        VStack(spacing: 20) {
            CustomTextFieldExView(textFieldName: "Email", sfSymbol: "envelope.fill", text: $email)
            CustomSecureFieldExView(textFieldName: "Mot de passe", sfSymbol: "lock.fill", text: $password)
            Spacer()
            Button(action: {
                userViewModel.login(email: email, password: password)
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
    MyAccountLoginView()
        .environmentObject(UserViewModel())
}
