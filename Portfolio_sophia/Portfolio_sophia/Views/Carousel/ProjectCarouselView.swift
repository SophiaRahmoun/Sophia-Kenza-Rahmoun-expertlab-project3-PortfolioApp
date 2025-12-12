//
//  ProjectCarouselView.swift
//  Portfolio_sophia
//
//  Created by admin on 12/12/2025.
//

import SwiftUI

struct ProjectCarouselView: View {

    private let projects = Array(0..<3)

    @State private var selectedIndex: Int = 0
    @State private var dragX: CGFloat = 0
    
    var body: some View {
        ZStack {
            ForEach(projects, id: \.self) { index in
                let rel = CarouselTransition.relativeIndex(
                    for: index,
                    selected: selectedIndex,
                    count: projects.count
                )
                
                
                // Projet arrière gauche
                ProjectCardPlaceholderView()
                    .opacity(CarouselTransition.opacity(for: rel))
                    .rotationEffect(CarouselTransition.rotation(for: rel))
                    .offset(x:  CarouselTransition.xOffset(for: rel, drag: dragX), y: CarouselTransition.yOffset(for: rel)
                    )
                    .scaleEffect(0.92)
                    .zIndex(0)
                    .animation(.spring(response: 0.35, dampingFraction: 0.85), value: selectedIndex)
                    .animation(.spring(response: 0.35, dampingFraction: 0.85), value: dragX)
            }
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 40)
        .contentShape(Rectangle())
        .highPriorityGesture(dragGesture)
        .zIndex(999)
    }
                
    private var dragGesture: some Gesture {
           DragGesture(minimumDistance: 10, coordinateSpace: .local)
               .onChanged { value in
                   dragX = max(-140, min(140, value.translation.width)) // limit the drag a bitt
               }
               .onEnded { value in
                   let threshold: CGFloat = 70
                   let predicted = value.predictedEndTranslation.width

                   withAnimation(.spring(response: 0.35, dampingFraction: 0.85)) {
                       if predicted <= -threshold {
                           goNext()
                       } else if predicted >= threshold {
                           goPrev()
                       }
                       dragX = 0
                   }
               }
       }

       private func goNext() {
           selectedIndex = (selectedIndex + 1) % projects.count
       }

       private func goPrev() {
           selectedIndex = (selectedIndex - 1 + projects.count) % projects.count
       }
   }

#Preview {
    PortfolioOnePagerView()
}
