//
//  ObjectsView.swift
//  AtHomeApp
//
//  Created by Apprenant 166 on 21/10/2024.
//

import SwiftUI

struct GameView: View {
    @ObservedObject var viewModel = ObjectViewModel()
    
    var body: some View {
        NavigationView {
            HStack {
                Image(systemName: "attention")
                Text("WORK IN PROGRESS")
                    .foregroundStyle(.red)
            }
        }
    }
}

#Preview {
    GameView()
}