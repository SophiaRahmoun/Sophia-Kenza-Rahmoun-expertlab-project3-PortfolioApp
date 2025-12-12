//
//  Text+Typography.swift
//  Portfolio_sophia
//
//  Created by admin on 12/12/2025.
//

import SwiftUI

enum AppFont {


    static func h1(_ size: CGFloat = 48) -> Font {
        .custom("SubwayNewYorkOT", size: size)
    }

    static func h2(_ size: CGFloat = 32) -> Font {
        .custom("Unbounded-Bold", size: size)
    }

    static func h3(_ size: CGFloat = 22) -> Font {
        .custom("SubwayBerlinOT", size: size)
    }


    static func body(_ size: CGFloat = 16) -> Font {
        .custom("D-DIN-Bold", size: size)
    }

    static func bodyBold(_ size: CGFloat = 16) -> Font {
        .custom("D-DIN-Bold", size: size)
        .weight(.bold)
    }
}
