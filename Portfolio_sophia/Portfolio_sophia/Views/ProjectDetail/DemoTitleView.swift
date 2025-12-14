//
//  DemoTitleView.swift
//  Portfolio_sophia
//
//  Created by admin on 14/12/2025.
//

import SwiftUI

struct DemoTitleView: View {

    var body: some View {
        OutlinedText(
            text: "Demo",
            strokeWidth: 1.2,
            strokeColor: .black,
            font: .custom("SubwayBerlinOT", size: 42)
        )
        .frame(maxWidth: .infinity, alignment: .center)
        .padding(.horizontal, 24)
        .padding(.top, 40)
    }
}
