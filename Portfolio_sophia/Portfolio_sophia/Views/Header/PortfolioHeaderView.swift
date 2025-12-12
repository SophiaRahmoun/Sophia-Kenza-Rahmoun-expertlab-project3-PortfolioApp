//
//  PortfolioHeaderView.swift
//  Portfolio_sophia
//
//  Created by admin on 12/12/2025.
//

import SwiftUI

struct PortfolioHeaderView: View {

    var body: some View {
        VStack(spacing: 8) {

            Text("SoSo")
                .font(AppFont.h1())
                .frame(maxWidth: .infinity, alignment: .leading)

            Text("Portfolio")
                .font(AppFont.h2())
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(.horizontal, 24)
    }
}

#Preview {
    PortfolioOnePagerView()
}
