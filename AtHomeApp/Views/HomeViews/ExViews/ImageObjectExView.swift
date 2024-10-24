//
//  ImageObject.swift
//  AtHomeApp
//
//  Created by Apprenant 141 on 21/10/2024.
//

import SwiftUI

struct ImageObjectExView: View {
    @State var offsetValue : CGFloat = 0
    let imageSize : CGFloat
    let imageUrl: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .fill(.ahOrange)
                .frame(width: imageSize, height : imageSize)
                .offset(x: offsetValue, y: offsetValue)
                .shadow(radius: 1, y : 2)
            RoundedRectangle(cornerRadius: 16)
                .fill(.ahBeige)
                .frame(width: imageSize, height : imageSize)
                .offset(x: -offsetValue, y: -offsetValue)
                .shadow(radius: 1, y : 2)
            RoundedRectangle(cornerRadius: 10)
                .stroke(LinearGradient(gradient: Gradient(colors: [.ahBeige, .ahOrange]), startPoint: .top, endPoint: .bottom), lineWidth: imageSize / 10)
                .frame(width: imageSize, height : imageSize)
                .shadow(radius: 1, y : 2)
            RoundedRectangle(cornerRadius: 10)
                .fill(.ahTrueWhite)
                .frame(width: imageSize, height : imageSize)
            AsyncImage(url: URL(string : imageUrl)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            } placeholder: {
                Color.gray
            }
            .frame(width: imageSize, height : imageSize)
        }
        .onAppear(perform: {
            offsetValue = imageSize / 10
        })
    }
}

#Preview {
    ImageObjectExView(imageSize: 200, imageUrl: "http://127.0.0.1:8081/images/objects/whisk.png")
}
