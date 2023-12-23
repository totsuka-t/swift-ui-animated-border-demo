//
//  AnimatedBorder.swift
//  AnimatedBorderDemo
//
//  Created by user on 2023/12/22
//


import SwiftUI

struct AnimatedBorder: ViewModifier {
    var borderColors: [Color] = [.red, .green, .blue]
    var backgroundColor: Color = .white
    var shape: AnyShape = AnyShape(Rectangle())
    var borderWidth: CGFloat = 5
    var duration: TimeInterval = 1.5
    @State private var gradientAngle: Double = 0
    
    func body(content: Content) -> some View {
        content
            .background {
                backgroundColor
                shape
                    .stroke(lineWidth: borderWidth)
                    .fill(AngularGradient(gradient: Gradient(colors: borderColors), center: .center, angle: .degrees(gradientAngle)))
            }
            .onAppear {
                withAnimation(.linear(duration: duration).repeatForever(autoreverses: false)) {
                    self.gradientAngle = 360
                }
            }
    }
}
