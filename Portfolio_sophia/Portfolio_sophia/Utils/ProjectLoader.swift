//
//  ProjectLoader.swift
//  Portfolio_sophia
//
//  Created by admin on 14/12/2025.
//


import Foundation

enum ProjectLoader {

    static func load() -> [Project] {
        guard
            let url = Bundle.main.url(forResource: "projects", withExtension: "json"),
            let data = try? Data(contentsOf: url),
            let projects = try? JSONDecoder().decode([Project].self, from: data)
        else {
            print("Failed to loadjson !")
            return []
        }

        return projects
    }
}
