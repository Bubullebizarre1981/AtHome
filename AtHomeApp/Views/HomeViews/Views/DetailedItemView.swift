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
        VStack {
            ImageObjectExView(imageSize: 200)
            ScrollView() {
                VStack(spacing : 20) {
                    ForEach (scientificInfoViewModel.scientificInfos) {info in
                        ScientificInfoCellExView()
                    }
                }
            }
        }.onAppear(perform:{
            scientificInfoViewModel.fetchInfosByObjetcID(objectID: object.id.uuidString)
            print(scientificInfoViewModel.scientificInfos)
            print("to")
        })
    }
}

#Preview {
    DetailedItemView(object: Object(name: "Test", image: "AH_testImage", description: "Tst", creationDate: "Test"))
}
