//
//  ScientificInfoCellView.swift
//  AtHomeApp
//
//  Created by Apprenant 171 on 21/10/2024.
//

import SwiftUI

struct ScientificInfoCellExView: View {
    var body: some View {
        ZStack {
            VStack(spacing: -30) {
                RoundedRectangle(cornerRadius: 40)
                    .frame(width: 250, height: 40)
                    .foregroundColor(.red)
                HStack {
                    RoundedRectangle(cornerRadius: 40)
                        .frame(width: 250, height: 40)
                        .foregroundColor(.blue)
                }
            }
            Text("Object Detail")
                .font(.title)
                .foregroundColor(.white)
        }
        Text("La cuillère est un des plus anciens ustensiles de cuisine, utilisé depuis la préhistoire. Les premières cuillères étaient fabriquées en os, en bois ou en pierre. Les Égyptiens utilisaient des cuillères décoratives en métal ou en ivoire dès 1000 av. J.-C.. La cuillère moderne a évolué avec l'introduction de matériaux comme l'acier inoxydable, l'argent et le plastique. Au fil du temps, la forme s'est standardisée pour une meilleure ergonomie et praticité.")
            .frame(width: 300)
            .foregroundColor(Color(.black))

    }
}

#Preview {
    ScientificInfoCellExView()
}
