//
//  DemoVideoView.swift
//  Portfolio_sophia
//
//  Created by admin on 14/12/2025.
//


import SwiftUI
import AVKit

struct DemoVideoView: View {

    let videoName: String
    private let phoneRatio: CGFloat = 9 / 19.5

    var body: some View {
        if let url = Bundle.main.url(forResource: videoName, withExtension: "MP4") {
            VideoPlayer(player: AVPlayer(url: url))
                .aspectRatio(phoneRatio, contentMode: .fit)
                .frame(maxWidth: UIScreen.main.bounds.width * 0.5)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .shadow(radius: 12, y: 8)
        } else {
            Text("Video not found")
                .foregroundColor(.red)
        }
    }
}
