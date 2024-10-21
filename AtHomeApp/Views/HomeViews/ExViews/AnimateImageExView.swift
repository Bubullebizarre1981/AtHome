//
//  AnimateImageExView.swift
//  AtHome_PersonalTest
//
//  Created by Apprenant 141 on 21/10/2024.
//

import SwiftUI

struct AnimateImageExView: View {
    var imageSymbol : String
    
    var speedAnimation : Double = 0.1
    var divideValue : CGFloat = .random(in: 10...15)
    
    @State var timer = Timer.publish(every: 0, on: .main, in: .common).autoconnect()
    @State var xPositionStart : CGFloat = 0
    @State var yPositionStart : CGFloat = 0
    @State var xPositionEnd : CGFloat = 0
    @State var yPositionEnd : CGFloat = 0
    @State var xPosition : CGFloat = 0
    @State var yPosition : CGFloat = 0
    
    var minX : CGFloat = -500
    var maxX : CGFloat = 500
    var minY : CGFloat = -700
    var maxY : CGFloat = 700
    
    @State var forwardAnimation : Bool = true
    
    var body: some View {
        ZStack {
            Image(systemName: imageSymbol)
                .font(.system(size: 120))
                .opacity(0.5)
                .offset(x : xPosition, y: yPosition)
        }
        .onAppear(perform: {
            timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
            let sideArray : [String] = ["left", "right", "up", "down"].shuffled()
            if sideArray.first == "left" {
                xPositionStart = minX
                yPositionStart = .random(in: minY...maxY)
                xPositionEnd = maxX
                yPositionEnd = .random(in: minY...maxY)
            } else if sideArray.first == "right" {
                xPositionStart = maxX
                yPositionStart = .random(in: minY...maxY)
                xPositionEnd = minX
                yPositionEnd = .random(in: minY...maxY)
            } else if sideArray.first == "up" {
                xPositionStart = .random(in: minX...maxX)
                yPositionStart = minY
                xPositionEnd = .random(in: minX...maxX)
                yPositionEnd = maxY
            } else if sideArray.first == "down" {
                xPositionStart = .random(in: minX...maxX)
                yPositionStart = maxY
                xPositionEnd = .random(in: minX...maxX)
                yPositionEnd = minY
            }
            xPosition = xPositionStart
            yPosition = yPositionStart
        })
        .onReceive(timer, perform: { _ in
            withAnimation(.smooth.speed(speedAnimation)) {
                let result = (abs(xPositionStart) + abs(xPositionEnd))/divideValue
                
                if xPositionStart < xPositionEnd && yPositionStart < yPositionEnd {
                    if forwardAnimation {
                        xPosition += result
                        yPosition += result
                    } else {
                        xPosition -= result
                        yPosition -= result
                    }
                    
                    if xPosition <= xPositionStart && yPosition <= yPositionStart {
                        forwardAnimation.toggle()
                    } else if xPosition >= xPositionEnd && yPosition >= yPositionEnd {
                        forwardAnimation.toggle()
                    }
                } else if xPositionStart < xPositionEnd && yPositionStart > yPositionEnd {
                    if forwardAnimation {
                        xPosition += result
                        yPosition -= result
                    } else {
                        xPosition -= result
                        yPosition += result
                    }
                    
                    if xPosition <= xPositionStart && yPosition >= yPositionStart {
                        forwardAnimation.toggle()
                    } else if xPosition >= xPositionEnd && yPosition <= yPositionEnd {
                        forwardAnimation.toggle()
                    }
                } else if xPositionStart > xPositionEnd && yPositionStart < yPositionEnd {
                    if forwardAnimation {
                        xPosition -= result
                        yPosition += result
                    } else {
                        xPosition += result
                        yPosition -= result
                    }
                    
                    if xPosition >= xPositionStart && yPosition <= yPositionStart {
                        forwardAnimation.toggle()
                    } else if xPosition <= xPositionEnd && yPosition >= yPositionEnd {
                        forwardAnimation.toggle()
                    }
                } else if xPositionStart > xPositionEnd && yPositionStart > yPositionEnd {
                    if forwardAnimation {
                        xPosition -= result
                        yPosition -= result
                    } else {
                        xPosition += result
                        yPosition += result
                    }
                    
                    if xPosition >= xPositionStart && yPosition >= yPositionStart {
                        forwardAnimation.toggle()
                    } else if xPosition <= xPositionEnd && yPosition <= yPositionEnd {
                        forwardAnimation.toggle()
                    }
                }
            }
        })
    }
}

#Preview {
    AnimateImageExView(imageSymbol : "sofa.fill")
}
