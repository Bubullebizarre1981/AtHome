//
//  CustomTextFieldExView.swift
//  AtHomeApp
//
//  Created by Apprenant 141 on 06/11/2024.
//


import SwiftUI

struct CustomTextFieldExView : View {
    var textFieldName : String
    var sfSymbol : String
    @Binding var text : String
    
    var body: some View {
        HStack {
            Image(systemName: sfSymbol)
                .foregroundStyle(.ahDarkBlue)
                .accessibilityHidden(true)
                .frame(width : 24)
            TextField(textFieldName, text: $text)
                .autocapitalization(.none)
                .disableAutocorrection(true)
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 8)
                .stroke(.ahDarkBlue, lineWidth: 3)
                .fill(.white)
        )
    }
}

#Preview {
    CustomTextFieldExView(textFieldName: "Name", sfSymbol : "trash", text: .constant(""))
}
