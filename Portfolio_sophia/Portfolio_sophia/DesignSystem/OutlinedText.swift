//
//  OutlinedText.swift
//  Portfolio_sophia
//
//  Created by admin on 12/12/2025.
//

import SwiftUI

struct OutlinedText: View {

    let text: String
    let font: UIFont
    let strokeColor: Color
    let lineWidth: CGFloat

    var body: some View {
        Canvas { context, size in

            let attributes: [NSAttributedString.Key: Any] = [
                .font: font,
                .strokeWidth: -lineWidth,
                .strokeColor: UIColor(strokeColor),
                .foregroundColor: UIColor.clear
            ]

            let nsAttributed = NSAttributedString(string: text, attributes: attributes)

            let attributedString = AttributedString(nsAttributed)

            context.draw(
                Text(attributedString),
                at: CGPoint(x: 0, y: font.pointSize)
            )
        }
        .frame(height: font.pointSize * 1.4)
    }
}
