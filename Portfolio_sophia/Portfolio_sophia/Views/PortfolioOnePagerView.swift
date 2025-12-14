//
//  PortfolioOnePagerView.swift
//  Portfolio_sophia
//
//  Created by admin on 12/12/2025.
//

import SwiftUI

struct PortfolioOnePagerView: View {
    private let projects: [Project] = ProjectLoader.load()
    
    var currentProject: Project? {
        guard projects.indices.contains(selectedProjectIndex) else {
            return nil
        }
        return projects[selectedProjectIndex]
    }
    @State private var selectedProjectIndex: Int = 0
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
                
                VStack(spacing: 15) {
                    
                    PortfolioHeaderView()
                    
                    ProjectCarouselView(projects: projects,
                                        selectedIndex: $selectedProjectIndex
                    )
                    .zIndex(1)
                    .padding(.top, 65)

                    
                }
                .frame(maxWidth: .infinity)
                .padding(.bottom, -220)
                
                
                .overlay(alignment: .topTrailing) {
                    FloatingImageView(
                        imageName: "strawberry-halftone",
                        animation: .subtleVertical
                    )
                    .frame(width: 125)
                    .opacity(0.9)
                    .offset(x: -1, y: 210)
                }
                
                if let project = currentProject {
                    VStack {
                        ProjectTitleBarView(project: project)
                        
                        ProcessTitleView()
                            .zIndex(2)

                        ProcessTextCardView(
                            text: project.processText,
                            backgroundColor: Color(
                                hex: project.processStyle?.backgroundColor ?? "#F2F2F2"
                            ),
                            textColor: Color(
                                hex: project.processStyle?.textColor ?? "#000000"
                            )
                        )
                        
                        ProjectDemoSectionView(project: project)

                        LearningGoalsTitleView(
                                   titleColor: Color(
                                       hex: project.learningGoalsStyle?.titleColor ?? "#000000"
                                   )
                               )

                               LearningGoalsListView(
                                   goals: project.learningGoals
                               )

                        RepositoryButtonView(repository: project.repository)

                        
                     
                    }
                    .padding(.bottom, 56)
                    .background(Color.white)
                }
                
            }
                
            }
            .zIndex(1)
        }

    }
    
}

#Preview {
    PortfolioOnePagerView()
}
