//
//  FontLoader.swift
//  Portfolio_sophia
//
//  Created by admin on 12/12/2025.
//


import UIKit
import CoreGraphics

enum FontLoader {

    static func registerFonts() {
        registerFont(filename: "subwaynewyorkot.otf")
        registerFont(filename: "subwayberlinot.otf")
        registerFont(filename: "Unbounded-Bold.ttf")
        registerFont(filename: "Unbounded-Medium.ttf")
        registerFont(filename: "D-DIN-Bold.otf")
    }

    private static func registerFont(filename: String) {
        guard
            let url = Bundle.main.url(forResource: filename, withExtension: nil),
            let dataProvider = CGDataProvider(url: url as CFURL),
            let font = CGFont(dataProvider)
        else {
            print("Failed to load font:", filename)
            return
        }

        var error: Unmanaged<CFError>?
        if !CTFontManagerRegisterGraphicsFont(font, &error) {
            print("Font already registered:", filename)
        } else {
            print("Registered font:", filename)
        }
    }
}
