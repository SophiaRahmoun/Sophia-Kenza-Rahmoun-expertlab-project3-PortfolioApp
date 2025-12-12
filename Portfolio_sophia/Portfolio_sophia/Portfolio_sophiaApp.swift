//
//  Portfolio_sophiaApp.swift
//  Portfolio_sophia
//
//  Created by admin on 12/12/2025.
//

import SwiftUI

@main
struct Portfolio_sophiaApp: App {
    let persistenceController = PersistenceController.shared

    init() {
          FontLoader.registerFonts()
      }
    
    var body: some Scene {
        WindowGroup {
            PortfolioOnePagerView()

        }
    }
}
