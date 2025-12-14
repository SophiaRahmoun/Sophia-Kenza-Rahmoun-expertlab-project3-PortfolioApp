//
//  ProcessTextCardView.swift
//  Portfolio_sophia
//
//  Created by admin on 14/12/2025.
//

import SwiftUI

struct ProcessTextCardView: View {

    let text: String
    let backgroundColor: Color
    let textColor: Color

    var body: some View {
        Text(text)
            .font(AppFont.body(16))
            .foregroundColor(textColor)
            .multilineTextAlignment(.leading)
            .padding(20)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .fill(backgroundColor)
            )
            .padding(.horizontal, 24)
    }
}
