//
//  LearningGoalsTitleView.swift
//  Portfolio_sophia
//
//  Created by admin on 14/12/2025.
//


import SwiftUI

struct LearningGoalsTitleView: View {
    let titleColor: Color

    var body: some View {
        Text("Learning goals")
            .font(AppFont.h3(42))
            .foregroundColor(titleColor)
            .frame(maxWidth: .infinity, alignment: .center)
            .padding(.horizontal, 24)
            .padding(.top, 32)
            .padding(.bottom, 15)
    }
}
