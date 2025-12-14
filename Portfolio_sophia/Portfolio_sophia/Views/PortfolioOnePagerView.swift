//
//  PortfolioOnePagerView.swift
//  Portfolio_sophia
//
//  Created by admin on 12/12/2025.
//

import SwiftUI

struct PortfolioOnePagerView: View {
    private let projects: [Project] = [
        Project(id: 1, title: "Villo Rebuild", coverImage: "", processText: "", demoVideo: ""),
        Project(id: 2, title: "MoodTracker", coverImage: "", processText: "", demoVideo: ""),
        Project(id: 3, title: "Portfolio App", coverImage: "", processText: "", demoVideo: "")
    ]
    
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
            
                    VStack(spacing: 40) {
                        
                        PortfolioHeaderView()
                      
                        ProjectCarouselView(projects: projects,
                                            selectedIndex: $selectedProjectIndex
                                        )
                            .zIndex(1)

                    }
                    .padding(.top, 32)
                    .padding(.bottom, 40)
                                   .frame(maxWidth: .infinity)
                                  
                
                                   .overlay(alignment: .topTrailing) {
                                                        FloatingImageView(
                                                            imageName: "strawberry-halftone",
                                                            animation: .subtleVertical
                                                        )
                                                        .frame(width: 125)
                                                        .opacity(0.9)
                                                        .offset(x: -2, y: 200)
                                                    }
                
                                VStack {
                                    ProjectTitleBarView(project: projects[selectedProjectIndex])

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
