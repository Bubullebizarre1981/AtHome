//
//  ButtonSpaceObject.swift
//  AtHomeApp
//
//  Created by Apprenant 141 on 24/10/2024.
//

import SwiftUI

struct ButtonSpaceObjectExView: View {
    let object: Object
    
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .fill(Color("AH_DarkBlue"))
            .frame(width: 125, height: 125)
            .overlay(
                RoundedRectangle(cornerRadius: 30)
                    .fill(Color.white)
                    .frame(width: 110, height:110)
                    .padding(.leading, 5)
            )
            .overlay(
                NavigationLink(destination: {
                    DetailedItemView(object: object)
                }, label: {
                    VStack {
                        AsyncImage(url: URL(string: object.image)) { phase in
                            if let image = phase.image {
                                image
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 60)
                            }
                        }
                        Text(object.name)
                            .background(Color.white.opacity(0.7))
                            .font(.system(size: 14))
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                    }
                })
            )
    }
}
