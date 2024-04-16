//
//  CircleView.swift
//  TrafficLight
//
//  Created by Владислав Соколов on 16.04.2024.
//

import SwiftUI

struct SignalView: View {
    
    let redOpacity: Double
    let yellowOpacity: Double
    let greenOpacity: Double
    
    var body: some View {
        VStack {
            Circle()
                .frame(width: 150, height: 150)
                .foregroundStyle(.red)
                .opacity(redOpacity)
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .padding()
            Circle()
                .frame(width: 150, height: 150)
                .foregroundStyle(.yellow)
                .opacity(yellowOpacity)
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .padding()
            Circle()
                .frame(width: 150, height: 150)
                .foregroundStyle(.green)
                .opacity(greenOpacity)
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .padding()
        }
    }
}
