//
//  PortfolioOnePagerView.swift
//  Portfolio_sophia
//
//  Created by admin on 12/12/2025.
//

import SwiftUI

struct PortfolioOnePagerView: View {
    let phoneRatio: CGFloat = 9 / 19.5
    
    var body: some View {
        ScrollView {
            VStack(spacing: 40) {

                PortfolioHeaderView()

                ProjectCarouselView()

                Spacer(minLength: 80)
            }
            .padding(.top, 32)
        }
     
    }
    
}

#Preview {
    PortfolioOnePagerView()
}
