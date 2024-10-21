//
//  PickerExView.swift
//  AtHome_PersonalTest
//
//  Created by Apprenant 141 on 21/10/2024.
//

import SwiftUI

struct PickerExView: View {
    let pickerSections : [String]
    @State var selectedSection : String
    @State var makeAnimation : Bool = false
    
    var body: some View {
        HStack(spacing : 0) {
            ForEach(pickerSections, id : \.self) { section in
                Button(action: {
                    selectedSection = section
                    makeAnimation.toggle()
                }, label : {
                    ZStack {
                        Rectangle()
                            .fill(selectedSection == section ? .ahOrange : .ahWhite)
                            .frame(width: 136)
                        Text(section)
                            .font(.system(size: selectedSection == section ? 22 : 18))
                            .foregroundStyle(selectedSection != section ? .ahOrange : .ahWhite)
                            .fontWeight(selectedSection == section ? .heavy : .bold)
                    }
                })
            }
        }
        .animation(.default, value: makeAnimation)
        .frame(height : 72)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .onAppear(perform: {
            selectedSection = pickerSections.first ?? "Maison"
        })
    }
}

#Preview {
    PickerExView(pickerSections: ["Maison", "Recherche"], selectedSection: "Maison")
}
