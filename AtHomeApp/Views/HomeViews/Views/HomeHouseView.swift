//
//  HomeHouseView.swift
//  AtHome_PersonalTest
//
//  Created by Apprenant 141 on 21/10/2024.
//

import SwiftUI

struct HomeHouseView: View {
    let symbolArray: [String] = ["fan.fill", "frying.pan.fill", "lightbulb.fill", "lamp.desk.fill", "shower.fill", "bathtub.fill", "chair.lounge.fill", "chair.fill", "cabinet.fill", "sink.fill", "toilet.fill", "refrigerator.fill", "microwave.fill", "cooktop.fill", "oven.fill"]
    
    @ObservedObject var spaceViewModel = SpaceViewModel()
    
    let widthHouse : CGFloat = 350
    let heightCaseHouse : CGFloat = 80
    let heightHouse : CGFloat = 560
    let spacingHouse : CGFloat = 12
    
    var body: some View {
        ZStack {
            ForEach(symbolArray, id : \.self) { symbol in
                AnimateImageExView(imageSymbol : symbol)
                    .rotationEffect(.degrees(.random(in: 0...360)))
            }
            if spaceViewModel.spaces.isEmpty {
                ZStack {
                    Rectangle()
                        .fill(.clear)
                    Text("No Data Found")
                }
            } else {
                VStack(spacing : spacingHouse * 2) {
                    ZStack {
                        House(roofSize : 110, roofWingsSize: 30)
                            .frame(width : widthHouse, height: 488)
                            .shadow(radius: 5, y : 12)
                        House(roofSize : 110, roofWingsSize: 30)
                            .fill(LinearGradient(gradient: Gradient(colors: [.ahLightBlue, .ahBeige]), startPoint: .top, endPoint: .bottom))
                            .stroke(.ahOrange, lineWidth: 6)
                            .frame(width : widthHouse, height: 488)
                        VStack(spacing : spacingHouse) {
                            if spaceViewModel.spaces.count == 9 {
                                TriangleButtonSpaceHomeExView(width: widthHouse * 0.7, height: heightCaseHouse, space: spaceViewModel.spaces[5])
                                LineSpaceHouseExView(spacing: spacingHouse,
                                                     width: widthHouse * 0.7,
                                                     height: heightCaseHouse,
                                                     spaceArray: [spaceViewModel.spaces[3], spaceViewModel.spaces[1]],
                                                     separationPercentage: 0.55)
                                LineSpaceHouseExView(spacing: spacingHouse,
                                                     width: widthHouse * 0.7,
                                                     height: heightCaseHouse,
                                                     spaceArray: [spaceViewModel.spaces[8], spaceViewModel.spaces[7]],
                                                     separationPercentage: 0.4)
                                LineSpaceHouseExView(spacing: spacingHouse,
                                                     width: widthHouse * 0.7,
                                                     height: heightCaseHouse,
                                                     spaceArray: [spaceViewModel.spaces[2], spaceViewModel.spaces[4]],
                                                     separationPercentage: 0.5)
                                RectangleButtonSpaceHomeExView(width: widthHouse * 0.7, height: heightCaseHouse, space: spaceViewModel.spaces[6])
                            }
                        }
                    }
                    if spaceViewModel.spaces.count == 9 {
                        ZStack {
                            RoundedRectangle(cornerRadius: 8)
                                .frame(width: widthHouse * 0.72, height: heightCaseHouse)
                                .shadow(radius: 5, y : 12)
                            RectangleButtonSpaceHomeExView(width: widthHouse * 0.72, height: heightCaseHouse, space: spaceViewModel.spaces[0])
                        }
                    }
                }
            }
        }
        .onAppear(perform: {
            spaceViewModel.fetchSpaces()
        })
    }
}

#Preview {
    HomeHouseView()
}
