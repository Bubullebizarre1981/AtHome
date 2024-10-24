//
//  MyBadgeView.swift
//  AtHomeApp
//
//  Created by Apprenant 166 on 23/10/2024.
//

import SwiftUI

struct MyBadgeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("AH_badgeimage")
                    .resizable()
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
    MyBadgeView()
}
