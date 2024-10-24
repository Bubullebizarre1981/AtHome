//
//  ObjectsView.swift
//  AtHomeApp
//
//  Created by Apprenant 166 on 21/10/2024.
//

import SwiftUI

//struct GameView: View {
//    var body: some View {
//        NavigationView {
//            ZStack {
//                Image("AH_gameimage")
//                VStack {
//                    Spacer()
//                    Text("WORK IN PROGRESS")
//                        .font(.system(size: 36, weight: .bold))
//                        .foregroundStyle(.red)
//                        .padding(.bottom, 110)
//                }
//            
//            }
//        }
//    }
//}

struct GameView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("AH_gameimage")
                Rectangle()
                    .fill(Color.white.opacity(0.5))
                    Text("WORK IN PROGRESS")
                        .font(.system(size: 36, weight: .bold))
                        .foregroundStyle(.ahDarkBlue)
                        .padding(10)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(.ahTrueWhite)
                        )
            }
        }
    }
}

#Preview {
    GameView()
}
