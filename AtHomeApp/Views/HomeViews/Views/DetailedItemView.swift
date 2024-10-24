//
//  DetailedItemView.swift
//  AtHomeApp
//
//  Created by Apprenant 171 on 22/10/2024.
//

import SwiftUI

struct DetailedItemView: View {
    @ObservedObject var scientificInfoViewModel: ScientificInfoViewModel = ScientificInfoViewModel()
    var object: Object
    let imageSize : CGFloat = 160
    
    var body: some View {
        VStack(spacing:50){
            ZStack {
                ImageObjectExView(imageSize: imageSize, imageUrl: object.image)
                TextDisplayExView(textToDisplay: object.name)
                // Si possible, remplacer le Offset par des VStack HStack Spacer() un jour
                    .offset(x: imageSize/2, y: imageSize/2)
                    .rotationEffect(.degrees(.random(in: -5...0)))
            }
            ScrollView() {
                VStack(spacing: 32) {
                    ForEach (scientificInfoViewModel.scientificInfos) {info in
                        ScientificInfoCellExView(titleText:info.title, bodyText:info.text)
                    }
                }
                .padding()
            }
        }
        .padding()
        .onAppear(perform:{
            scientificInfoViewModel.fetchInfosByObjetcName(objectName: object.name)
        })
    }
}

#Preview {
    DetailedItemView(object: Object(name: "Tasse", image: "http://127.0.0.1:8081/images/objects/cup.png", description: "Tst", creationDate: "Test"))
}
