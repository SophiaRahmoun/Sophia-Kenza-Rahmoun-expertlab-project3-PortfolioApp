
//
//  ProjectCardPlaceholderView.swift
//  Portfolio_sophia
//
//  Created by admin on 12/12/2025.
//

import SwiftUI

struct ProjectCardPlaceholderView: View {

    private let phoneRatio: CGFloat = 9 / 19.5

    var body: some View {
        GeometryReader { geo in
            RoundedRectangle(cornerRadius: 24)
                .fill(Color.gray.opacity(0.2))
                .overlay(
                    RoundedRectangle(cornerRadius: 24)
                        .stroke(Color.black.opacity(0.1), lineWidth: 1)
                )
        }
        .aspectRatio(phoneRatio, contentMode: .fit)
        .frame(maxWidth: 260) // largeur visuelle carte
        .shadow(radius: 12, y: 8)
    }
}
