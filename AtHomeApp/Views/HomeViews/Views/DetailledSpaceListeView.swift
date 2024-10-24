//
//  Salle_d_eauListeView.swift
//  AtHomeApp
//
//  Created by Apprenant 176 on 21/10/2024.
//

import SwiftUI

struct DetailledSpaceListeView: View {
    @ObservedObject var viewModel: ObjectViewModel = ObjectViewModel()
    let columns = [
        GridItem(.fixed(180)),
        GridItem(.fixed(180))
    ]
    var space: Space
    var body: some View {
        ZStack {
            BackgroundImageDestailledSpaceListeExView(imageUrl: space.image)
            VStack {
                ButtonDetailledSpaceListeExView(width1: 300, height1: 80, width2: 280, height2: 66, name: space.name)
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(viewModel.objects) { object in
                                ButtonDetailledSpaceListeExView(width1: 125, height1: 125, width2: 110, height2: 110, image: object.image, name: object.name)
                            .rotationEffect(.degrees(Double.random(in: -15...15)))
                            .padding()
                        }
                    }
                }
            }
        }
        .onAppear {
            viewModel.fetchObjectsBySpaceName(for: space.name)
        }
    }
}

//#Preview {
//    DetailledSpaceListeView(viewModel: ObjectViewModel(), space: Space(id: UUID(), name: "Salle d'eau", image: "http://localhost:8081/images/spaces/bathroom.jpg"))
//}
