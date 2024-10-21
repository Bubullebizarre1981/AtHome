//
//  TriangleButtonSpaceHome.swift
//  AtHomeApp
//
//  Created by Apprenant 141 on 21/10/2024.
//

import SwiftUI

struct TriangleButtonSpaceHomeExView: View {
    let heightButton: CGFloat
    
    var body: some View {
        NavigationLink(destination: {
            
        }, label: {
            ZStack {
                Triangle()
                    .stroke(.ahOrange, lineWidth: 8)
                    .frame(height: heightButton)
                Image("AH_testImage")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: heightButton)
                    .clipShape(Triangle())
                Text("Text")
                    .foregroundStyle(.ahTrueBlack)
                    .padding(8)
                    .background(content: {
                        RoundedRectangle(cornerRadius: 8)
                            .fill(.ahWhite.opacity(0.5))
                            .stroke(.ahTrueBlack, lineWidth: 1)
                    })
            }
        })
    }
}

#Preview {
    TriangleButtonSpaceHomeExView(heightButton: 100)
}
