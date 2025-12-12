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
        ZStack {

        Image("asset-background-black-to-red-gradient")
                       .resizable()
                       .scaledToFill()
                       .ignoresSafeArea()
                       .zIndex(0)
        ScrollView {
            VStack(spacing: 0) {
            
                    VStack(spacing: 40) {
                        
                        PortfolioHeaderView()
                        
                        ProjectCarouselView()
                        
                        Spacer(minLength: 80)
                    }
                    .padding(.top, 32)
                    .padding(.bottom, 40)
                                   .frame(maxWidth: .infinity)
                                  
                                VStack {
                    Text("Next section")
                        .foregroundColor(.black)
                        .padding()
                                }
                                                    .background(Color.white)
                }
                
            }
            .zIndex(1)
        }

    }
    
}

#Preview {
    PortfolioOnePagerView()
}
