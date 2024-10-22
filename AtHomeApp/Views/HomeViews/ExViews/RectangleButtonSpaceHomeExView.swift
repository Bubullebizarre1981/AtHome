//
//  RectangleButtonSpaceHome.swift
//  AtHomeApp
//
//  Created by Apprenant 141 on 21/10/2024.
//

import SwiftUI

struct RectangleButtonSpaceHomeExView: View {
    let heightButton: CGFloat
    
    var body: some View {
        NavigationLink(destination: {
            
        }, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 8)
                    .stroke(.ahOrange, lineWidth: 8)
                    .frame(height: heightButton)
                Image("AH_testImage")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: heightButton)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                Text("Test")
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
    RectangleButtonSpaceHomeExView(heightButton: 100)
}
