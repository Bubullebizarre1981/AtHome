//
//  AnimateImageExView.swift
//  AtHome_PersonalTest
//
//  Created by Apprenant 141 on 21/10/2024.
//

import SwiftUI

struct AnimateImageExView: View {
    var imageSymbol : String
    
    var animationSpeed : Double = 0.05
    @State var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    @State var rotation : CGFloat = 0
    @State var rotationIncrement : CGFloat = 0
    @State var imageRotation : CGFloat = 0
    @State var xOffset : CGFloat = 0
    @State var rightOrLeftRotation : Bool = true
    
    var body: some View {
        VStack {
                Image(systemName: imageSymbol)
                    .font(.system(size: 80))
                    .opacity(0.2)
                    .rotationEffect(.degrees(imageRotation))
                    .offset(x: xOffset)
        }
        .rotationEffect(.degrees(rotation))
        .onAppear(perform: {
            imageRotation = .random(in: 0...360)
            xOffset = .random(in: 20...60)
            if .random(in: 0...1) >= 0.5 {
                rightOrLeftRotation = true
            } else {
                rightOrLeftRotation = false
            }
            rotationIncrement = 10 + .random(in: 0...2)
        })
        .onReceive(timer, perform: { _ in
            withAnimation(.linear.speed(animationSpeed)) {
                if rightOrLeftRotation {
                    rotation += rotationIncrement
                } else {
                    rotation -= rotationIncrement
                }
            }
        })
    }
}

#Preview {
    AnimateImageExView(imageSymbol : "sofa.fill")
}
