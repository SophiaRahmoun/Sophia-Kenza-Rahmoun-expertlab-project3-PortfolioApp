//
//  ProjectCarouselView.swift
//  Portfolio_sophia
//
//  Created by admin on 12/12/2025.
//

import SwiftUI

struct ProjectCarouselView: View {

    private let phoneRatio: CGFloat = 9 / 19.5

    var body: some View {
        ZStack {

            // Projet arrière gauche
            ProjectCardPlaceholderView()
                .rotationEffect(.degrees(-6))
                .offset(x: -40, y: 20)
                .scaleEffect(0.92)
                .zIndex(0)

            // Projet arrière droit
            ProjectCardPlaceholderView()
                .rotationEffect(.degrees(6))
                .offset(x: 40, y: 20)
                .scaleEffect(0.92)
                .zIndex(1)

            // Projet actif (devant)
            ProjectCardPlaceholderView()
                .zIndex(2)
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 40)
    }
}
