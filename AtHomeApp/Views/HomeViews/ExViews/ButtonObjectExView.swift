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
        NavigationLink(destination: {
            
        }, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 8)
                    .fill(.ahWhite)
                    .frame(height : 160)
                    .shadow(radius: 3, y: 3)
                HStack {
                    if rightOrLeft {
                        Spacer()
                        TextDisplayExView()
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
                        TextDisplayExView()
                            .rotationEffect(.degrees(10))
                        Spacer()
                    }
                }
            }
            .padding(3)
        })
    }
}

#Preview {
    ButtonObjectExView(rightOrLeft: false)
}
