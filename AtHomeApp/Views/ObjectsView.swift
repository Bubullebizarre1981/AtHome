//
//  ObjectsView.swift
//  AtHomeApp
//
//  Created by Apprenant 166 on 21/10/2024.
//

import SwiftUI

struct ObjectsView: View {
    @ObservedObject var viewModel = ObjectViewModel()
    
    var body: some View {
        NavigationView {
//            AsyncImage(url: URL(string: "http://localhost:8081/images/objects/cup.png"))
            List(viewModel.objects) { object in
                HStack {
                     
                    if let url = URL(string: object.image) {
                        AsyncImage(url: url) { image in
                            image
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                        } placeholder: {
                            // Placeholder while the image is loading
                            ProgressView()
                        }
                    }
 
                    VStack(alignment: .leading) {
                        Text(object.name)
                            .font(.headline)
                    }
                }
            }
            .navigationTitle("Cuisine")
            .onAppear {
                viewModel.fetchObjets() // Make sure this fetches the correct image URLs
            }
        }
    }
}


#Preview {
    ObjectsView()
}
