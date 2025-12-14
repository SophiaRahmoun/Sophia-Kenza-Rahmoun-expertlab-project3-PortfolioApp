//
//  ProcessTitleView.swift
//  Portfolio_sophia
//
//  Created by admin on 14/12/2025.
//


import SwiftUI

struct ProcessTitleView: View {

    var body: some View {
        OutlinedText(
            text: "Process",
            font: UIFont(name: "SubwayBerlinOT", size: 42)!,
            strokeColor: .black,
            lineWidth: 1.5
        )
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, 24)
    }
}