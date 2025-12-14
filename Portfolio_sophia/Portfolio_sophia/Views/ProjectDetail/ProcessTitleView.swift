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
            strokeWidth: 0.2,
               strokeColor: .black,
               font: .custom("SubwayBerlinOT", size: 65)
       )
        .frame(maxWidth: .infinity, alignment: .center)
        .padding(.horizontal, 24)
    }
}

#Preview {
    PortfolioOnePagerView()
}
