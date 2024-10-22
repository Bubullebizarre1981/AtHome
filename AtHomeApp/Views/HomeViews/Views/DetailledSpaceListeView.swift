//
//  Salle_d_eauListeView.swift
//  AtHomeApp
//
//  Created by Apprenant 176 on 21/10/2024.
//

import SwiftUI

struct DetailledSpaceListeView: View {
    @ObservedObject var viewModel: SpaceViewModel = SpaceViewModel()
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        ZStack{
            Image("Bathroom")
                .resizable()
                .ignoresSafeArea(edges:.top)
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(viewModel.spaces) { space in
                                Text(space.name)
                    }
                }
            }
        }.onAppear() {
            viewModel.fetchSpaces()
        }
    }
}

#Preview {
    DetailledSpaceListeView()
}
