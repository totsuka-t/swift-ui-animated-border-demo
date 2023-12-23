//
//  ContentView.swift
//  AnimatedBorderDemo
//
//  Created by user on 2023/12/22
//


import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 50) {
            Text("Default Color")
                .frame(width: 250, height: 50)
                .modifier(AnimatedBorder())
            
            Text("Custom Color")
                .frame(width: 250, height: 50)
                .modifier(AnimatedBorder(borderColors: [.green, .orange, .yellow]))
            
            Text("Custom Animated Border")
                .frame(width: 250, height: 50)
                .modifier(
                    AnimatedBorder(
                        borderColors: [
                            Color(.init(red: 187/255, green: 255/255, blue: 239/255, alpha: 1)),
                            Color(.init(red: 236/255, green: 237/255, blue: 203/255, alpha: 1)),
                            Color(.init(red: 255/255, green: 155/255, blue: 252/255, alpha: 1)),
                            Color(.init(red: 248/255, green: 227/255, blue: 183/255, alpha: 1)),
                        ],
                        shape: AnyShape(Capsule()),
                        borderWidth: 10,
                        duration: 0.5
                    )
                )
        }
    }
}

#Preview {
    ContentView()
}
