//
//  FloatingAnimation.swift
//  Portfolio_sophia
//
//  Created by admin on 12/12/2025.
//

import SwiftUI

enum FloatingAxis {
    case vertical
    case horizontal
    case both
}

struct FloatingAnimation {

    let axis: FloatingAxis
    let amplitude: CGFloat
    let duration: Double
    let delay: Double

    static let subtleVertical = FloatingAnimation(
        axis: .vertical,
        amplitude: 18,
        duration: 4.0,
        delay: 0
    )

    static let gentleBoth = FloatingAnimation(
        axis: .both,
        amplitude: 25,
        duration: 6.0,
        delay: 0
    )
}
