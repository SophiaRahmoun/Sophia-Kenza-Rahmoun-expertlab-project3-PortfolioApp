//
//  LearningGoalsListView.swift
//  Portfolio_sophia
//
//  Created by admin on 14/12/2025.
//


import SwiftUI

struct LearningGoalsListView: View {
    let goals: [String]

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            ForEach(goals, id: \.self) { goal in
                HStack(alignment: .top, spacing: 8) {
                    Text("–")
                    Text(goal)
                }
                .font(AppFont.body(16))
                .foregroundColor(.black)
            }
        }
        .padding(.horizontal, 24)
        .padding(.bottom, 24)
    }
}