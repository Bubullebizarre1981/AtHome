//
//  HomePickerView.swift
//  AtHome_PersonalTest
//
//  Created by Apprenant 141 on 21/10/2024.
//

import SwiftUI

struct HomePickerView: View {
    let pickerSections: [String] = ["Maison", "Recherche"]
    @State var seletectedSection: String = "Maison"
    
    var body: some View {
        VStack {
            if seletectedSection == "Maison" {
                HomeHouseView()
            } else if seletectedSection == "Recherche" {
                HomeSearchView()
            }
            PickerExView(pickerSections: pickerSections, selectedSection: seletectedSection)
        }
    }
}

#Preview {
    HomePickerView()
}
