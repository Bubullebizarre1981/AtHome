//
//  ButtonObject.swift
//  AtHomeApp
//
//  Created by Apprenant 141 on 21/10/2024.
//

import SwiftUI

struct ButtonObjectExView: View {
    let rightOrLeft: Bool
    let object: Object
    
    var body: some View {
        NavigationLink(destination: {
            DetailedItemView(object: object)
        }, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 8)
                    .fill(.ahWhite)
                    .frame(height : 120)
                    .shadow(radius: 3, y: 3)
                HStack {
                    if rightOrLeft {
                        Spacer()
                        TextDisplayExView(textToDisplay: object.name)
                            .rotationEffect(.degrees(-10))
                        Spacer()
                        ImageObjectExView(imageSize : 80, imageUrl: object.image)
                            .rotationEffect(.degrees(10))
                        Spacer()
                    } else {
                        Spacer()
                        ImageObjectExView(imageSize : 80, imageUrl: object.image)
                            .rotationEffect(.degrees(-10))
                        Spacer()
                        TextDisplayExView(textToDisplay: object.name)
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
    ButtonObjectExView(rightOrLeft: false, object: Object(name: "", image: "", description: "", creationDate: ""))
}
