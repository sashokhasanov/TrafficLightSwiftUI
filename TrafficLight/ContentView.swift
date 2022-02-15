//
//  ContentView.swift
//  TrafficLight
//
//  Created by Сашок on 15.02.2022.
//

import SwiftUI

struct ContentView: View {
    @State
    private var currentLightIndex = -1
    
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            VStack {
                trafficLights
                Spacer()
                NextButton(currentLightIndex: $currentLightIndex)
            }.padding()
        }
    }
    
    private var trafficLights: some View {
        VStack(spacing: 30) {
            ColorCircle(color: .red,
                        opacity: getOpacity(for: 0))
            ColorCircle(color: .yellow,
                        opacity: getOpacity(for: 1))
            ColorCircle(color: .green,
                        opacity: getOpacity(for: 2))
        }
    }
    
    private func getOpacity(for lightIndex: Int) -> Double {
        currentLightIndex == lightIndex ? 1 : 0.3
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
