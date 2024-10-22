//
//  AuthentificationSelectionExView.swift
//  AtHomeApp
//
//  Created by Apprenant 166 on 21/10/2024.
//


import SwiftUI

struct AuthentificationSelectionExView: View {
    @Binding var selection: Int
    let options = ["S'inscrire", "Se connecter"]
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(options.indices, id: \.self) { index in
                Button(action: {
                    selection = index
                }) {
                    Text(options[index])
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(selection == index ? Color.ahDarkBlue: Color.white)
                        .foregroundColor(selection == index ? Color.white : Color.ahDarkBlue)
                        .font(.title2)
                }
            }
        }
        .background(Color.white)
        .overlay(
            RoundedRectangle(cornerRadius: 40)
                .stroke(Color.ahDarkBlue, lineWidth: 3)
        )
        .cornerRadius(40)
    }
}

struct AuthentificationSelectionExView_Previews: PreviewProvider {
    @State static var selection = 0
    
    static var previews: some View {
        AuthentificationSelectionExView(selection: $selection)
    }
}

