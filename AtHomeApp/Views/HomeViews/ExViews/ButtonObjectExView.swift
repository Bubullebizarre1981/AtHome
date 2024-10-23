//
//  ButtonObject.swift
//  AtHomeApp
//
//  Created by Apprenant 141 on 21/10/2024.
//

import SwiftUI

struct ButtonObjectExView: View {
    let rightOrLeft: Bool
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 8)
                .fill(.ahWhite)
                .frame(height : 160)
            HStack {
                if rightOrLeft {
                    Spacer()
                    TextDisplayExView(textToDisplay: "Test")
                        .rotationEffect(.degrees(-10))
                    Spacer()
                    ImageObjectExView(imageSize : 100)
                        .rotationEffect(.degrees(10))
                    Spacer()
                } else {
                    Spacer()
                    ImageObjectExView(imageSize : 100)
                        .rotationEffect(.degrees(-10))
                    Spacer()
                    TextDisplayExView(textToDisplay: "Test02")
                        .rotationEffect(.degrees(10))
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ButtonObjectExView(rightOrLeft: false)
}
