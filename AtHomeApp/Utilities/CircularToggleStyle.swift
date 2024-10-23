//
//  CircularToggleStyle.swift
//  AtHomeApp
//
//  Created by Apprenant 166 on 23/10/2024.
//

import SwiftUI

struct CircularToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            ZStack {
                Circle()
                    .fill(configuration.isOn ? Color.ahDarkBlue : Color.white)
                    .strokeBorder(lineWidth: 2)
                    .frame(width: 20, height: 20)
                
                if configuration.isOn {
                    Image(systemName: "checkmark")
                        .foregroundColor(.white)
                        .font(.system(size: 10, weight: .bold))
                }
            }
            .onTapGesture {
                configuration.isOn.toggle()
            }
        }
        configuration.label
    }
}
