//
//  DemoVideoPlaceholderView.swift
//  Portfolio_sophia
//
//  Created by admin on 14/12/2025.
//

import SwiftUI


struct DemoVideoPlaceholderView: View {

    let widthRatio: CGFloat = 0.5 //~moitié
    let phoneRatio: CGFloat = 9 / 19.5

    var body: some View {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.black.opacity(0.15))
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.black.opacity(0.1), lineWidth: 1)
                )
                .aspectRatio(phoneRatio, contentMode: .fit)
                .frame(width: UIScreen.main.bounds.width * 0.5)
                .shadow(radius: 12, y: 8)
 
    }
}
