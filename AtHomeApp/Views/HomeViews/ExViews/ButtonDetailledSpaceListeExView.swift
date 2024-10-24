//
//  ButtonDetailledSpaceListeExView.swift
//  AtHomeApp
//
//  Created by Apprenant 176 on 23/10/2024.
//

import SwiftUI

struct ButtonDetailledSpaceListeExView: View {
    var width1: CGFloat
    var height1: CGFloat
    var width2: CGFloat
    var height2: CGFloat
    var image: String?
    var name: String
    
//    space
    
    var body: some View {
        
        RoundedRectangle(cornerRadius: 30)
            .fill(Color("AH_DarkBlue"))
            .frame(width: width1, height: height1)
            .overlay(
                RoundedRectangle(cornerRadius: 30)
                    .fill(Color.white)
                    .frame(width: width2, height: height2)
                    .padding(.leading, 5)
            )
            .overlay(
                VStack {
                    if ((image?.isEmpty) == nil) {
                        Text(name)
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                    } else {
                        NavigationLink(destination: {
//                            DetailedItemView()
                        }, label: {
                            VStack {
                                AsyncImage(url: URL(string: image!)) { phase in
                                    if let image = phase.image {
                                        image
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 80, height: 60)
                                    }
                                }
                                Text(name)
                                    .background(Color.white.opacity(0.7))
                                    .font(.system(size: 14))
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                            }
                        })
                    }
                }
            ).clipped()
    }
}
