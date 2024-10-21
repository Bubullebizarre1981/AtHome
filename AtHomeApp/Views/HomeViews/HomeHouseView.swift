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
    let heightHouse : CGFloat = 560
    let spacingHouse : CGFloat = 15
    
    var body: some View {
        ZStack {
            ForEach(symbolArray, id : \.self) { symbol in
                AnimateImageExView(imageSymbol : symbol)
                    .rotationEffect(.degrees(.random(in: 0...360)))
            }
            VStack(spacing: spacingHouse) {
                Triangle()
                HStack(spacing: spacingHouse) {
                    Rectangle()
                    Rectangle()
                }
                .frame(width : widthHouse*0.85)
                HStack(spacing: spacingHouse) {
                    Rectangle()
                    Rectangle()
                }
                .frame(width : widthHouse*0.85)
                HStack(spacing: spacingHouse) {
                    Rectangle()
                    Rectangle()
                }
                .frame(width : widthHouse*0.85)
                Rectangle()
                    .frame(width : widthHouse*0.85)
            }
            .frame(width : widthHouse, height: heightHouse)
//            Rectangle()
        }
    }
}

#Preview {
    HomeHouseView()
}
