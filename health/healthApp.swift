//
//  healthApp.swift
//  health
//
//  Created by Erfan Ghafoori on 2024-01-23.
//

import SwiftUI

@main
struct healthApp: App {
    @StateObject var manager = HealthManager()
    var body: some Scene {
        WindowGroup {
            HealthTabView()
                .environmentObject(manager)
        }
    }
}
