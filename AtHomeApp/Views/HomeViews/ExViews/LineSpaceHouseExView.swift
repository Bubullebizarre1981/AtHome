//
//  LineSpaceHouse.swift
//  AtHomeApp
//
//  Created by Apprenant 141 on 21/10/2024.
//

import SwiftUI

struct LineSpaceHouseExView: View {
    let spacingHouse: CGFloat
    let heightButton: CGFloat
    
    var body: some View {
        HStack(spacing : spacingHouse) {
            RectangleButtonSpaceHomeExView(heightButton: heightButton)
            RectangleButtonSpaceHomeExView(heightButton: heightButton)
        }
    }
}

#Preview {
    LineSpaceHouseExView(spacingHouse: 10, heightButton: 100)
}
