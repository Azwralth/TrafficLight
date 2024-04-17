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
        VStack {
            SignalView(opacity: redOpacity, color: .red)
            SignalView(opacity: yellowOpacity, color: .yellow)
            SignalView(opacity: greenOpacity, color: .green)
            
            Button(action: getNextLight) {
                Text(buttonTitle)
                    .font(.title.bold())
                    .frame(width: 150, height: 30)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(20)
                    .foregroundColor(.white)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.white, lineWidth: 4))
            }
            .padding(.top, 100)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
    }
    
    private func getNextLight() {
        let lightsOff = 0.3
        let lightsOn = 1.0
        
        switch currentLight {
        case .red:
            buttonTitle = "NEXT"
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
