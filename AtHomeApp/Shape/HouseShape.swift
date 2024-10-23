//
//  HouseShape.swift
//  AtHomeApp
//
//  Created by Apprenant 141 on 22/10/2024.
//

import SwiftUI

struct House: Shape {
    let roofSize : CGFloat
    let roofWingsSize : CGFloat
    
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: rect.midX, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY + roofSize))
            path.addLine(to: CGPoint(x: rect.maxX - roofWingsSize, y: rect.minY + roofSize))
            path.addLine(to: CGPoint(x: rect.maxX - roofWingsSize, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.minX + roofWingsSize, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.minX + roofWingsSize, y: rect.minY + roofSize))
            path.addLine(to: CGPoint(x: rect.minX, y: rect.minY + roofSize))
            path.closeSubpath()
        }
    }
}

#Preview {
    House(roofSize: 200, roofWingsSize: 20)
}
