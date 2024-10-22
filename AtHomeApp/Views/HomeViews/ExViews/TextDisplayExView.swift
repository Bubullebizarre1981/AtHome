//
//  TextDisplayExView.swift
//  AtHomeApp
//
//  Created by Apprenant 141 on 21/10/2024.
//

import SwiftUI

struct TextDisplayExView: View {
//    let textToDisplay : String
    
    var body: some View {
        ZStack {
            Text("Text To Display")
                .foregroundStyle(.ahTrueWhite)
                .font(.system(size : 24))
                .bold()
                .padding()
                .background(content: {
                    ZStack {
                        Capsule()
                            .fill(.ahLightBlue)
                            .offset(x: -10, y: -10)
                            .shadow(radius: 2, y: 6)
                        Capsule()
                            .fill(.ahDarkBlue)
                            .shadow(radius: 2, y: 6)
                    }
                })
        }
    }
}

#Preview {
    TextDisplayExView()
}
