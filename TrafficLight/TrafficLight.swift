//
//  ContentView.swift
//  TrafficLight
//
//  Created by Владислав Соколов on 15.04.2024.
//

import SwiftUI

struct TrafficLight: View {
    
    @State private var currentLight = CurrentLight.red
    @State private var isStarted = false
    
    @State private var redOpacity = 0.3
    @State private var yellowOpacity = 0.3
    @State private var greenOpacity = 0.3
    
    let lightsOff = 0.3
    let lightsOn = 1.0
    
    var body: some View {
        VStack {
            SignalView(
                redOpacity: redOpacity,
                yellowOpacity: yellowOpacity,
                greenOpacity: greenOpacity
            )
            Button(action: {
                getNextLight()
                isStarted = true
            }) {
                Text(isStarted ? "NEXT" : "START")
                    .frame(width: 70, height: 20)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 4))
            }
            .padding(.top, 50)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
    }
    
    private func getNextLight() {
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

extension TrafficLight {
    enum CurrentLight {
        case red, yellow, green
    }
}


#Preview {
    TrafficLight()
}
