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
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .foregroundStyle(.red)
                .opacity(redOpacity)
                .padding(.top, 10)
            Circle()
                .frame(width: 150, height: 150)
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .foregroundStyle(.yellow)
                .opacity(yellowOpacity)
                .padding(.top, 10)
            Circle()
                .frame(width: 150, height: 150)
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .foregroundStyle(.green)
                .opacity(greenOpacity)
                .padding(.top, 10)
        }
    }
}
