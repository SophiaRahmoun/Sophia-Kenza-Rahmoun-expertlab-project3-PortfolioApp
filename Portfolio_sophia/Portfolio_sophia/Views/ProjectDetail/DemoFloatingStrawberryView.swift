//
//  DemoFloatingStrawberryView.swift
//  Portfolio_sophia
//
//  Created by admin on 14/12/2025.
//

import SwiftUI

struct DemoFloatingStrawberryView: View {

    var body: some View {
        FloatingImageView(
            imageName: "strawberry-halftone",
            animation: .subtleVertical
        )
        .frame(width: 140)
        .offset(x: -110, y: 20)
    }
}
