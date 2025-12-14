//
//  ProjectLoader.swift
//  Portfolio_sophia
//
//  Created by admin on 14/12/2025.
//


import Foundation
enum ProjectLoader {

    static func load() -> [Project] {
        guard let url = Bundle.main.url(forResource: "projects", withExtension: "json") else {
            print("❌ projects.json NOT found in bundle")
            return []
        }

        do {
            let data = try Data(contentsOf: url)
            let projects = try JSONDecoder().decode([Project].self, from: data)
            print(" Loaded \(projects.count) projects")
            return projects
        } catch {
            print(" JSON decode error:", error)
            return []
        }
    }
}
