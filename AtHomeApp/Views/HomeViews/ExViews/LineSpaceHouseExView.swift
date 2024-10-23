//
//  LineSpaceHouse.swift
//  AtHomeApp
//
//  Created by Apprenant 141 on 21/10/2024.
//

import SwiftUI

struct LineSpaceHouseExView: View {
    let spacing: CGFloat
    let width: CGFloat
    let height: CGFloat
    let spaceArray: [Space]
    let separationPercentage: Double
    
    var body: some View {
        HStack(spacing : spacing) {
            RectangleButtonSpaceHomeExView(width: (width - spacing) * separationPercentage, height: height, space: spaceArray[0])
            RectangleButtonSpaceHomeExView(width: (width - spacing) * (1 - separationPercentage), height: height, space: spaceArray[1])
        }
    }
}

#Preview {
    LineSpaceHouseExView(spacing: 10, width: 100, height: 100, spaceArray: [Space(id: UUID(), name: "Test", image: "AH_testImage"), Space(id: UUID(), name: "Test", image: "AH_testImage")], separationPercentage: 0.5)
}
