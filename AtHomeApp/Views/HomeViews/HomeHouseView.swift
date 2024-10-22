//
//  HomeHouseView.swift
//  AtHome_PersonalTest
//
//  Created by Apprenant 141 on 21/10/2024.
//

import SwiftUI

struct HomeHouseView: View {
    let symbolArray: [String] = ["fan.fill", "frying.pan.fill", "lightbulb.fill", "lamp.desk.fill", "shower.fill", "bathtub.fill", "chair.lounge.fill", "chair.fill", "cabinet.fill", "sink.fill", "toilet.fill", "refrigerator.fill", "microwave.fill", "cooktop.fill", "oven.fill", "sofa.fill", "bed.double.fill", "spigot.fill", "door.left.hand.closed"]
    
    let widthHouse : CGFloat = 300
    let heightCaseHouse : CGFloat = 88
    let heightHouse : CGFloat = 560
    let spacingHouse : CGFloat = 16
    
    var body: some View {
        ZStack {
            ForEach(symbolArray, id : \.self) { symbol in
                AnimateImageExView(imageSymbol : symbol)
                    .rotationEffect(.degrees(.random(in: 0...360)))
            }
            VStack(spacing : spacingHouse * 2) {
                ZStack {
                    VStack(spacing : 0) {
                        ZStack {
                            Triangle()
                                .fill()
                                .stroke(.ahOrange, lineWidth: 10)
                                .shadow(radius: 5, y : 12)
                            Triangle()
                                .fill(.ahLightBlue)
                        }
                        .frame(width : widthHouse * 1.2, height: heightCaseHouse*1.3)
                        ZStack {
                            Rectangle()
                                .fill()
                                .stroke(.ahOrange, lineWidth: 10)
                                .shadow(radius: 5, y : 12)
                            Rectangle()
                                .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.ahLightBlue, .ahBeige, .ahBeige]), startPoint: .top, endPoint: .bottom))
                        }
                        .frame(width: widthHouse * 1.05)
                    }
                    .frame(height: (heightCaseHouse * 5 + spacingHouse * 4)*1.06)
                    VStack(spacing : spacingHouse) {
                        TriangleButtonSpaceHomeExView(heightButton: heightCaseHouse)
                        LineSpaceHouseExView(spacingHouse: spacingHouse, heightButton: heightCaseHouse)
                        LineSpaceHouseExView(spacingHouse: spacingHouse, heightButton: heightCaseHouse)
                        LineSpaceHouseExView(spacingHouse: spacingHouse, heightButton: heightCaseHouse)
                        RectangleButtonSpaceHomeExView(heightButton: heightCaseHouse)
                    }
                    .frame(width : widthHouse*0.9)
                }
                .frame(width : widthHouse)
                RectangleButtonSpaceHomeExView(heightButton: heightCaseHouse)
                    .frame(width : widthHouse * 0.92, height: heightCaseHouse)
                    .shadow(radius: 5, y : 12)
                
            }
//            .frame(width : widthHouse, height: heightHouse)
        }
    }
}

#Preview {
    HomeHouseView()
}
