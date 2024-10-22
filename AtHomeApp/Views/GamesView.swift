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
            List(viewModel.objects) { object in
                HStack {
                    if let url = URL(string: object.image) {
                        AsyncImage(url: url) { image in
                            image
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                        } placeholder: {
                            ProgressView()
                        }
                    }
                    VStack(alignment: .leading) {
                        Text(object.name)
                            .font(.headline)
                        
                        // Convert the date to a string
                        Text(formatDate(object.creationDate))
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
            }
            .navigationTitle("Cuisine")
            .onAppear {
                viewModel.fetchObjects() // Assuming you meant to call fetchObjects instead of fetchUsers
            }
        }
    }
}

#Preview {
    ObjectsView()
}
