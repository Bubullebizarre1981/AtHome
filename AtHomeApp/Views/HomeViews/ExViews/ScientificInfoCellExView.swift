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
        VStack (spacing: 20){
            TextDisplayExView(textToDisplay: titleText)
            Text(bodyText)
                .frame(width: 300)
                .foregroundColor(Color(.black))
        }
    }
}

#Preview {
    ScientificInfoCellExView(titleText:"Title", bodyText: "Body")
}
