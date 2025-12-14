//
//  OutlinedText.swift
//  Portfolio_sophia
//
//  Created by admin on 12/12/2025.
//
import SwiftUI

struct OutlinedText: View {

    let text: String
    let strokeWidth: CGFloat
    let strokeColor: Color
    let font: Font

    var body: some View {
        ZStack {
            ZStack {
                Text(text)
                    .font(font)
                    .offset(x:  strokeWidth, y:  0)
                Text(text)
                    .font(font)
                    .offset(x: -strokeWidth, y:  0)
                Text(text)
                    .font(font)
                    .offset(x:  0, y:  strokeWidth)
                Text(text)
                    .font(font)
                    .offset(x:  0, y: -strokeWidth)
            }
            .foregroundColor(strokeColor)

            // Fill transparent
            Text(text)
                .font(font)
                .foregroundColor(.clear)
        }
        // 👇 padding DOIT être ici
        .padding(strokeWidth * 2)
        .accessibilityLabel(text)
    }
}
