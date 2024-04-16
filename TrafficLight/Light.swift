//
//  Light.swift
//  TrafficLight
//
//  Created by Владислав Соколов on 15.04.2024.
//
//
//enum LightColor {
//    case red, yellow, green
//}
//
//struct Light {
//    let lightIsOn = 1.0
//    let lightIsOff = 0.3
//    
//    var currentColor = LightColor.red
//    
//    mutating func getLight() {
//        switch currentColor {
//        case .red:
//            currentColor = .yellow
//        case .yellow:
//            currentColor = .green
//        case .green:
//            currentColor = .red
//        }
//    }
//    
//    var redOpacity: Double {
//        currentColor == .red ? lightIsOn : lightIsOff
//    }
//    
//    var yellowOpacity: Double {
//        currentColor == .yellow ? lightIsOn : lightIsOff
//    }
//    
//    var greenOpacity: Double {
//        currentColor == .green ? lightIsOn : lightIsOff
//    }
//}
