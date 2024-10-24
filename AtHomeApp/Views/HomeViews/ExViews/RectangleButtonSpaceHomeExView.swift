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
            DetailledSpaceListeView(space: space)
        }, label: {
            ZStack {
                AsyncImage(url: URL(string : space.image)) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                } placeholder: {
                    Color.gray
                }
                .frame(width : width, height: height)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                RoundedRectangle(cornerRadius: 8)
                    .stroke(.ahOrange, lineWidth: 4)
                    .frame(width : width, height: height)
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
    RectangleButtonSpaceHomeExView(width : 100, height: 100, space : Space(id: UUID(), name: "Test", image: "http://localhost:8081/images/spaces/garden.jpg"))
}
