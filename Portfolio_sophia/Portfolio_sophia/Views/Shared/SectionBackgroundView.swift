//
//  SectionBackgroundView.swift
//  Portfolio_sophia
//
//  Created by admin on 12/12/2025.
//
import SwiftUI

struct SectionBackgroundView<Content: View>: View {

    let backgroundImage: String
    let content: Content

    init(
        backgroundImage: String,
        @ViewBuilder content: () -> Content
    ) {
        self.backgroundImage = backgroundImage
        self.content = content()
    }

    var body: some View {
        ZStack(alignment: .top) {

            Image(backgroundImage)
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity)
                .clipped()

            content
        }
    }
}
