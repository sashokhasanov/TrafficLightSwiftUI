//
//  NextButton.swift
//  TrafficLight
//
//  Created by Сашок on 15.02.2022.
//

import SwiftUI

struct NextButton: View {
    @Binding
    var currentLightIndex: Int
    
    var body: some View {
        Button(action: buttonTapped) {
            Text(currentLightIndex < 0 ? "Start" : "Next")
                .font(.title2)
                .frame(width: 200, height: 50)
                .foregroundColor(.white)
                .background(.blue)
                .cornerRadius(15)
        }
    }
    
    private func buttonTapped() {
        currentLightIndex += 1
        currentLightIndex %= 3
    }
}

struct NextButton_Previews: PreviewProvider {
    static var previews: some View {
        NextButton(currentLightIndex: Binding.constant(-1))
    }
}
