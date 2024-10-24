//
//  HomeSearchView.swift
//  AtHome_PersonalTest
//
//  Created by Apprenant 141 on 21/10/2024.
//

import SwiftUI

struct HomeSearchView: View {
    @ObservedObject var objectViewModel = ObjectViewModel()
    @State var rightOrLeft: Bool = true
    
    var body: some View {
        VStack {
            if objectViewModel.objects.isEmpty {
                ZStack {
                    Rectangle()
                        .fill(.clear)
                    Text("No Data Found")
                }
            } else {
                ScrollView {
                    ForEach(objectViewModel.objects) { object in
                        ButtonObjectExView(rightOrLeft: rightOrLeft, object: object)
                    }
                }
            }
        }
        .onAppear{
            objectViewModel.fetchObjects()
        }
    }
}

