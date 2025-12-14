//
//  FloatingImageView.swift
//  Portfolio_sophia
//
//  Created by admin on 13/12/2025.
//

import SwiftUI

struct FloatingImageView: View {

    let imageName: String
    let animation: FloatingAnimation

    @State private var offset: CGFloat = 0

    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFit()
            .offset(
                x: animation.axis == .horizontal || animation.axis == .both ? offset : 0,
                y: animation.axis == .vertical || animation.axis == .both ? offset : 0
            )
            .onAppear {
                withAnimation(
                    .easeInOut(duration: animation.duration)
                        .repeatForever(autoreverses: true)
                        .delay(animation.delay)
                ) {
                    offset = animation.amplitude
                }
            }
    }
}
