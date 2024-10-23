//
//  Salle_d_eauListeView.swift
//  AtHomeApp
//
//  Created by Apprenant 176 on 21/10/2024.
//

import SwiftUI

struct DetailledSpaceListeView2: View {
    @ObservedObject var viewModel: ObjectViewModel = ObjectViewModel()
    let columns = [
        GridItem(.fixed(100)),
        GridItem(.fixed(100))
    ]
    var space: Space
    var body: some View {
        ZStack {
            AsyncImage(url: URL(string: space.image)) { phase in
                if let image = phase.image {
                    image
                        .resizable()
                        .scaledToFill()
                        .opacity(0.5)
                        .ignoresSafeArea(edges:.top)
                        .padding(.leading, 530)
                }
            }
            VStack {
                RoundedRectangle(cornerRadius: 30)
                    .fill(Color("AH_DarkBlue"))
                    .frame(width: 300, height: 80)
                    .overlay(
                        RoundedRectangle(cornerRadius: 30)
                            .fill(Color.white)
                            .frame(width: 280, height: 66)
                            .padding(.leading, 5)
                    )
                    .overlay(
                        Text("Cuisine")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                    )
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(viewModel.objects) { object in
                        Text(object.name)
                    }
                }
            }
        }
        .onAppear {
            viewModel.fetchObjectsBySpaceName(for: space.name)
        }
    }
}

extension Array {
    func chunked(into size: Int) -> [[Element]] {
        stride(from: 0, to: count, by: size).map {
            Array(self[$0..<Swift.min($0 + size, count)])
        }
    }
}

#Preview {
    DetailledSpaceListeView2(viewModel: ObjectViewModel(), space: Space(id: UUID(), name: "Cuisine", image: "http://localhost:8081/images/spaces/kitchen.jpg"))
}
