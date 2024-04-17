//
//  CircleView.swift
//  TrafficLight
//
//  Created by Владислав Соколов on 16.04.2024.
//

import SwiftUI

struct SignalView: View {
    
    let opacity: Double
    let color: Color
    
    var body: some View {
        Circle()
            .frame(width: 150, height: 150)
            .foregroundStyle(color)
            .opacity(opacity)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .padding()
    }
}
