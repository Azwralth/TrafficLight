//
//  ButtonView.swift
//  TrafficLight
//
//  Created by Владислав Соколов on 18.04.2024.
//

import SwiftUI

struct ButtonView: View {
    var title: String
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title.bold())
                .background(.blue)
                .foregroundStyle(.white)
        }
        .frame(width: 200, height: 60)
        .background(.blue)
        .clipShape(.rect(cornerRadius: 20))
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(.white, lineWidth: 4))
        .padding(.top, 90)
    }
}

#Preview {
    ButtonView(title: "START", action: {})
}
