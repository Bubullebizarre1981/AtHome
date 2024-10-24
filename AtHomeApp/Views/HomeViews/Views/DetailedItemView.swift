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
    
    var body: some View {
        VStack(spacing:50){
            ImageObjectExView(imageSize: 200, imageUrl: object.image)
            ScrollView() {
                VStack(spacing : 20) {
                    ForEach (scientificInfoViewModel.scientificInfos) {info in
                        ScientificInfoCellExView(titleText:info.title, bodyText:info.text)
                    }
                }
            }
        }.onAppear(perform:{
            scientificInfoViewModel.fetchInfosByObjetcName(objectName: object.name)
        })
    }
}

#Preview {
    DetailedItemView(object: Object(name: "Tasse", image: "http://127.0.0.1:8081/images/objects/cup.png", description: "Tst", creationDate: "Test"))
}
