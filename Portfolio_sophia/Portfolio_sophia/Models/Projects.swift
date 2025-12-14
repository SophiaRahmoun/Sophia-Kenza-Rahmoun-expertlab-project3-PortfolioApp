//
//  projects.swift
//  Portfolio_sophia
//
//  Created by admin on 12/12/2025.
//

import SwiftUI
import Foundation

struct Project: Identifiable, Codable {
    let id: Int
    let title: String
    let coverImage: String
    let processText: String
    let demoVideo: String
    let processStyle: ProcessStyle?
}
