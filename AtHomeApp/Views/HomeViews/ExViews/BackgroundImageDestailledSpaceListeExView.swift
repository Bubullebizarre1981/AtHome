//
//  BackgroundImageDestailledSpaceListeExView.swift
//  AtHomeApp
//
//  Created by Apprenant 176 on 23/10/2024.
//

import SwiftUI

struct BackgroundImageDestailledSpaceListeExView: View {
    let space: Space
    var opacity: Double = 0.5
    
    var body: some View {
        AsyncImage(url: URL(string: space.image)) { phase in
            if let image = phase.image {
                image
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea(edges:.top)
                    .padding(.leading, 530)
            }
        }
//        .blur(radius: 5)
        Rectangle()
            .fill(Color.white.opacity(0.5))
            .blur(radius: 10)
//            .ignoresSafeArea()
    }
}
