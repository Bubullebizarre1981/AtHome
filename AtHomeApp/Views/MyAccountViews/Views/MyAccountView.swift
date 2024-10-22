//
//  MyAccountView.swift
//  AtHomeApp
//
//  Created by Apprenant 166 on 21/10/2024.
//


import SwiftUI

struct MyAccountView: View {
    
    @State private var selectedView = 0
    
    var body: some View {
        NavigationView {
                VStack {
                    Spacer()
                    Text("Authentification")
                        .font(.system(size: 38))
                        .foregroundColor(Color.ahDarkBlue)
                    AuthentificationSelectionExView(selection: $selectedView)
                        .padding()
                    if selectedView == 0 {
                        MyAccountRegisterView()
                    } else {
                        MyAccountLoginView()
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
                    .padding()
                    Spacer()
            }
        }
    }
}

#Preview {
    MyAccountView()
}
