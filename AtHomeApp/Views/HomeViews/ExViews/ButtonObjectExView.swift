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
            
        }, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 8)
                    .fill(.ahWhite)
                    .frame(height : 120)
                    .shadow(radius: 2, y: 4)
                HStack {
                    if rightOrLeft {
                        Spacer()
<<<<<<< Updated upstream
                        TextDisplayExView()
                            .rotationEffect(.degrees(-10))
=======
                        TextDisplayExView(textToDisplay: object.name)
                            .rotationEffect(.degrees(.random(in: (-20)...(-5))))
>>>>>>> Stashed changes
                        Spacer()
                        ImageObjectExView(imageSize : 80, imageUrl: object.image)
                            .rotationEffect(.degrees(.random(in: 5...20)))
                        Spacer()
                    } else {
                        Spacer()
                        ImageObjectExView(imageSize : 80, imageUrl: object.image)
                            .rotationEffect(.degrees(.random(in: (-20)...(-5))))
                        Spacer()
<<<<<<< Updated upstream
                        TextDisplayExView()
                            .rotationEffect(.degrees(10))
=======
                        TextDisplayExView(textToDisplay: object.name)
                            .rotationEffect(.degrees(.random(in: 5...20)))
>>>>>>> Stashed changes
                        Spacer()
                    }
                }
            }
            .padding(3)
        })
    }
}

#Preview {
    ButtonObjectExView(rightOrLeft: false, object: Object(id: UUID(), name: "Test", image: "http://localhost:8081/images/spaces/garden.jpg", description: "Description", creationDate: "Test"))
}
