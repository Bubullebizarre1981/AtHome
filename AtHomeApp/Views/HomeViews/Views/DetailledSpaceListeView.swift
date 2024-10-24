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
            BackgroundImageDestailledSpaceListeExView(space: space)
            VStack {
                TitleSpaceExView(space: space)
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(viewModel.objects) { object in
                            ButtonSpaceObjectExView(object: object)
                                .rotationEffect(.degrees(Double.random(in: -15...15)))
                                .padding()
                        }
                    }
                }
            }
            .padding(.top)
        }
        .onAppear {
            viewModel.fetchObjectsBySpaceName(for: space.name)
        }
    }
}

//#Preview {
//    DetailledSpaceListeView(viewModel: ObjectViewModel(), space: Space(id: UUID(), name: "Salle d'eau", image: "http://localhost:8081/images/spaces/bathroom.jpg"))
//}
