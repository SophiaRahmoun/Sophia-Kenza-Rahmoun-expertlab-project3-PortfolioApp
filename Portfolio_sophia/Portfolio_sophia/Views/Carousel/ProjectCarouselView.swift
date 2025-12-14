//
//  ProjectCarouselView.swift
//  Portfolio_sophia
//
//  Created by admin on 12/12/2025.
//

import SwiftUI

struct ProjectCarouselView: View {

    let projects: [Project]
    @Binding var selectedIndex: Int

    @State private var dragX: CGFloat = 0
    
    var body: some View {
        ZStack {
            ForEach(projects.indices, id: \.self) { index in
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
                    .scaleEffect(CarouselTransition.scale(for: rel))
                    .zIndex(CarouselTransition.zIndex(for: rel))
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
           DragGesture()
               .onChanged { value in
                   dragX = max(-140, min(140, value.translation.width)) // limit the drag a bitt
               }
               .onEnded { value in
                   let threshold: CGFloat = 70
                   let predicted = value.predictedEndTranslation.width

                   withAnimation {
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
