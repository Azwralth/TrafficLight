//
//  ContentView.swift
//  TrafficLight
//
//  Created by Владислав Соколов on 15.04.2024.
//

import SwiftUI

struct TrafficLight: View {
    
    @State private var currentLight = CurrentLight.red
    @State private var buttonTitle = "START"
    
    @State private var redOpacity = 0.3
    @State private var yellowOpacity = 0.3
    @State private var greenOpacity = 0.3
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                SignalView(opacity: redOpacity, color: .red)
                SignalView(opacity: yellowOpacity, color: .yellow)
                SignalView(opacity: greenOpacity, color: .green)
            
                ButtonView(title: buttonTitle) {
                    if buttonTitle == "START" {
                        buttonTitle = "NEXT"
                    }
                    getNextLight()
                }
            }
        }
    }
    
    private func getNextLight() {
        let lightsOff = 0.3
        let lightsOn = 1.0
        
        switch currentLight {
        case .red:
            currentLight = .yellow
            redOpacity = lightsOn
            greenOpacity = lightsOff
        case .yellow:
            currentLight = .green
            yellowOpacity = lightsOn
            redOpacity = lightsOff
        case .green:
            currentLight = .red
            greenOpacity = lightsOn
            yellowOpacity = lightsOff
        }
    }
}

enum CurrentLight {
    case red, yellow, green
}

#Preview {
    TrafficLight()
}
