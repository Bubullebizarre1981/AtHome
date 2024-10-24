//
//  ScientificInfoCellView.swift
//  AtHomeApp
//
//  Created by Apprenant 171 on 21/10/2024.
//

import SwiftUI

struct ScientificInfoCellExView: View {
    let titleText : String
    let bodyText: String
    
    var body: some View {
        VStack(spacing: 20){
            HStack {
                TextDisplayExView(textToDisplay: titleText)
                    .rotationEffect(.degrees(.random(in: -5...0)))
                Spacer()
            }
            HStack {
                Text(bodyText)
                    .foregroundColor(Color(.black))
                Spacer()
            }
        }
    }
}

#Preview {
    ScientificInfoCellExView(titleText:"Title", bodyText: "Bodycezonchfiezocfhvezoucnoezcnvzevcnezovncozeckvnezonvcezoinvceizovncozevcnzeoivbnczoevcnbzeoivcnzeoivcneziocvnzeonvciezh")
}
