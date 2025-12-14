//
//  ProjectDemoSectionView.swift
//  Portfolio_sophia
//
//  Created by admin on 14/12/2025.
//



import SwiftUI

struct ProjectDemoSectionView: View {

    let project: Project

    var body: some View {
        VStack(spacing: 24) {

            DemoTitleView()

            ZStack(alignment: .center) {

                DemoFloatingStrawberryView()

                VStack(spacing: 24) {

                    DemoVideoPlaceholderView()

                    // Cas spécial VILLO (id == 1)
                    if project.id == 1 {
                        DemoVideoPlaceholderView()
                    }
                }
                .frame(maxWidth: .infinity)
            }
        }
        .padding(.bottom, 48)
    }
}
