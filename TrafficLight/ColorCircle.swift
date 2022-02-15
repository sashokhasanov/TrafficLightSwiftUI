//
//  ColorCircle.swift
//  TrafficLight
//
//  Created by Сашок on 15.02.2022.
//

import SwiftUI

struct ColorCircle: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 150, height: 150)
            .opacity(opacity)
            .overlay(Circle().stroke(.white, lineWidth: 5))
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ColorCircle(color: .green, opacity: 0.5)
        }
    }
}
