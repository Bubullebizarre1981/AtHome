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
                        Text(userViewModel.users.first?.name  ?? "No User Data")
                        Spacer()
                    }
                    HStack {
                        Text("Email : ")
                            .bold()
                        Text(userViewModel.users.first?.email  ?? "No User Data")
                        Spacer()
                    }
                    HStack {
                        Text("Meilleur Streak : ")
                            .bold()
                        Text("\(userViewModel.users.first?.bestStreak ?? -1)")
                        Spacer()
                    }
                    
                    HStack {
                        Text("Streak Actuelle : ")
                            .bold()
                        Text("\(userViewModel.users.first?.actualStreak ?? -1)")
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
            }
            .padding()
        }
    }
}

#Preview {
    MyBadgeView()
        .environmentObject(UserViewModel())
}
