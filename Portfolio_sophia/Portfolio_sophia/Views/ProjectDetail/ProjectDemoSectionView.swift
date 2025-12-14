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

                    ForEach(project.demoVideos, id: \.self) { video in
                                          DemoVideoView(videoName: video)
                                      }
                }
                .frame(maxWidth: .infinity)
            }
        }
        .padding(.bottom, 48)
    }
}
