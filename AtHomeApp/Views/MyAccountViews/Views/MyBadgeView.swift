//
//  MyBadgeView.swift
//  AtHomeApp
//
//  Created by Apprenant 166 on 23/10/2024.
//

import SwiftUI

struct MyBadgeView: View {
    @State var token : String?
    @EnvironmentObject var userViewModel : UserViewModel
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Vous êtes connecté")
                    .font(.largeTitle)
                    .bold()
                Spacer()
                VStack(alignment: .leading, spacing : 20) {
                    HStack {
                        Text("Nom : ")
                            .bold()
                        Text(userViewModel.users.first?.name  ?? "No User")
                        Spacer()
                    }
                    HStack {
                        Text("Email : ")
                            .bold()
                        Text(userViewModel.users.first?.email  ?? "No User")
                        Spacer()
                    }
                }
                Spacer()
                Button(action: {
                    userViewModel.logOut()
                }, label: {
                    Text("Se déconnecter")
                        .font(.title2)
                        .foregroundStyle(.white)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                        )
                })
                Spacer()
            }
            .padding()
            .onAppear(perform: {
                token = KeychainManager.getTokenFromKeychain()
                let decodedJWT = decode(jwtToken: token  ?? "No Token")
                for i in decodedJWT {
                    if i.key == "userId" {
                        userViewModel.getById(id: i.value as! String)
                    }
                }
            })
        }
    }
}
