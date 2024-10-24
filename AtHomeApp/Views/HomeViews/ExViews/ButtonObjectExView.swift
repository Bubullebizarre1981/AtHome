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
            DetailedItemView(object: Object(name: "Test", image: "AH_testImage", description: "Tst", creationDate: "Test"))
        }, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 8)
                    .fill(.ahWhite)
                    .frame(height : 160)
                    .shadow(radius: 3, y: 3)
                HStack {
                    if rightOrLeft {
                        Spacer()
                        TextDisplayExView(textToDisplay: "Test")
                            .rotationEffect(.degrees(-10))
                        Spacer()
                        ImageObjectExView(imageSize : 100, imageUrl: object.image)
                            .rotationEffect(.degrees(10))
                        Spacer()
                    } else {
                        Spacer()
                        ImageObjectExView(imageSize : 100, imageUrl: object.image)
                            .rotationEffect(.degrees(-10))
                        Spacer()
                        TextDisplayExView(textToDisplay: "Test")
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
