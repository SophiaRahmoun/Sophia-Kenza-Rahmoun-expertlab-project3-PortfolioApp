//
//  CarouselTransition.swift
//  Portfolio_sophia
//
//  Created by admin on 12/12/2025.
//

import SwiftUI

enum CarouselTransition {

    static func relativeIndex(for index: Int, selected: Int, count: Int) -> Int {
        
        var diff = index - selected
        if diff > count / 2 { diff -= count }
        if diff < -count / 2 { diff += count }
        return diff
    }

    static func xOffset(for rel: Int, drag: CGFloat) -> CGFloat {
        // drag affects front card 
        let base: CGFloat = 42
        if rel == 0 { return drag }
        return CGFloat(rel) * base
    }

    static func yOffset(for rel: Int) -> CGFloat {
        rel == 0 ? 0 : 22
    }

    static func scale(for rel: Int) -> CGFloat {
        rel == 0 ? 1.0 : 0.92
    }

    static func rotation(for rel: Int) -> Angle {
        if rel == 0 { return .degrees(0) }
        return .degrees(rel < 0 ? -6 : 6)
    }

    static func opacity(for rel: Int) -> Double {
        switch abs(rel) {
        case 0: return 1.0
        case 1: return 1.0
        default: return 0.0 // on ne montre que 3 cartes (actif + 2)
        }
    }

    static func zIndex(for rel: Int) -> Double {
        // actif au-dessus, puis droite, puis gauche
        switch rel {
        case 0: return 3
        case 1: return 2
        case -1: return 1
        default: return 0
        }
    }
}
