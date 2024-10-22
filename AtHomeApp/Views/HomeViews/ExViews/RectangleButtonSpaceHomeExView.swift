//
//  RectangleButtonSpaceHome.swift
//  AtHomeApp
//
//  Created by Apprenant 141 on 21/10/2024.
//

import SwiftUI

struct RectangleButtonSpaceHomeExView: View {
    let width: CGFloat
    let height: CGFloat
    let space: Space
    
    var body: some View {
        NavigationLink(destination: {
            
        }, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 8)
                    .stroke(.ahOrange, lineWidth: 8)
                    .frame(width : width, height: height)
                AsyncImage(url : URL(string : space.image))
                    .frame(width : width, height: height)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                Text(space.name)
                    .foregroundStyle(.ahTrueBlack)
                    .padding(8)
                    .background(content: {
                        RoundedRectangle(cornerRadius: 8)
                            .fill(.ahWhite.opacity(0.75))
                            .stroke(.ahTrueBlack, lineWidth: 1)
                    })
            }
        })
    }
}

#Preview {
    RectangleButtonSpaceHomeExView(width : 100, height: 100, space : Space(id: UUID(), name: "Test", image: "AH_testImage"))
}
