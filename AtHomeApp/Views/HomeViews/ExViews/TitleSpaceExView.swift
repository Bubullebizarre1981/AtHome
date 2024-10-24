//
//  TitleSpaceExView.swift
//  AtHomeApp
//
//  Created by Apprenant 141 on 24/10/2024.
//

import SwiftUI

struct TitleSpaceExView : View {
    let space : Space
    
    var body: some View {
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
                Text(space.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
            )
    }
}

//#Preview(
//    TitleSpaceExView(space: Space(name: "Test", image: "AH_testImage"))
//)
