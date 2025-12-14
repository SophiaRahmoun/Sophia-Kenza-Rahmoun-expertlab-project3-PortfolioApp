//
//  ProjectTitleBarView.swift
//  Portfolio_sophia
//
//  Created by admin on 14/12/2025.
//

import SwiftUI

struct ProjectTitleBarView: View {

    let project: Project

    var body: some View {
        HStack {
            Text(project.title)
                .font(AppFont.body(24))
                .foregroundColor(.black)

            Spacer()

            Text(formattedIndex)
                .font(AppFont.h2(52))
                .fontWeight(.bold)
                .padding(.horizontal, 23)
                
                .foregroundColor(.black)
        }
        .padding(.horizontal, 24)
        .padding(.vertical, 12)
    }

    private var formattedIndex: String {
        String(format: "%02d", project.id)
    }
}


#Preview {
    PortfolioOnePagerView()
}
