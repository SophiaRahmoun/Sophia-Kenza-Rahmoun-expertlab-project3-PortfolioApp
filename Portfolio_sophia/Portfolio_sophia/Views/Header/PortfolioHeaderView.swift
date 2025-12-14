//
//  PortfolioHeaderView.swift
//  Portfolio_sophia
//
//  Created by admin on 12/12/2025.
//

import SwiftUI

struct PortfolioHeaderView: View {

    var body: some View {
        VStack(spacing: 4) {

            Text("SoSo")
                .font(AppFont.h1(230))
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity)
                .foregroundColor(Color(hex: "#9F1C30"))


                .fadeIn(delay: 0.09)


            Text("Portfolio")
                .font(AppFont.h3(52))
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.center)
                .foregroundColor(Color(hex: "#f6f7f5"))


                .fadeIn(delay: 1.02)
        }
        .padding(.bottom, 1)
    }
}

#Preview {
    PortfolioOnePagerView()
}
