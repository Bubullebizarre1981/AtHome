//
//  TriangleButtonSpaceHome.swift
//  AtHomeApp
//
//  Created by Apprenant 141 on 21/10/2024.
//

import SwiftUI

struct TriangleButtonSpaceHomeExView: View {
    let width: CGFloat
    let height: CGFloat
    let space: Space
    
    var body: some View {
        NavigationLink(destination: {
            DetailledSpaceListeView(space: space)
        }, label: {
            ZStack {
                Triangle()
                    .stroke(.ahOrange, lineWidth: 8)
                    .frame(width : width, height: height)
                AsyncImage(url: URL(string : space.image)) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                } placeholder: {
                    Color.gray
                }
                .frame(width : width, height: height)
                .clipShape(Triangle())
                Text(space.name)
                    .foregroundStyle(.ahTrueBlack)
                    .padding(8)
                    .background(content: {
                        RoundedRectangle(cornerRadius: 8)
                            .fill(.ahWhite)
                            .stroke(.ahTrueBlack, lineWidth: 1)
                    })
            }
        })
    }
}

#Preview {
    TriangleButtonSpaceHomeExView(width: 300, height: 100, space: Space(id: UUID(), name: "Grenier", image: "http://localhost:8081/images/spaces/attic.jpg"))
}
