
//
//  ProjectCardPlaceholderView.swift
//  Portfolio_sophia
//
//  Created by admin on 12/12/2025.
//

import SwiftUI

struct ProjectCardView: View {

    let project: Project
    private let phoneRatio: CGFloat = 9 / 19.5

    var body: some View {
        Image(project.coverImage)
                   .resizable()
                   .scaledToFill()
                   .frame(maxWidth: 240)
                   .aspectRatio(phoneRatio, contentMode: .fit)
                   .clipShape(RoundedRectangle(cornerRadius: 24))
                   .shadow(radius: 12, y: 8)
        
    }
}
