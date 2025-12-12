//
//  FadeInText.swift
//  Portfolio_sophia
//
//  Created by admin on 12/12/2025.
//

import SwiftUI

struct FadeIn: ViewModifier {
    let delay: Double
    @State private var shown = false

    func body(content: Content) -> some View {
        content
            .opacity(shown ? 1 : 0)
            .offset(y: shown ? 0 : 8)
            .onAppear {
                withAnimation(.easeOut(duration: 0.45).delay(delay)) {
                    shown = true
                }
            }
    }
}

extension View {
    func fadeIn(delay: Double = 0) -> some View {
        modifier(FadeIn(delay: delay))
    }
}
