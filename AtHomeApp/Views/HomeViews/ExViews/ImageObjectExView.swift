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
            Image("AH_testImage")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width : imageSize, height: imageSize)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
        .onAppear(perform: {
            offsetValue = imageSize / 10
        })
    }
}

#Preview {
    ImageObjectExView(imageSize: 200)
}
