//
//  TabView.swift
//  health
//
//  Created by Erfan Ghafoori on 2024-01-24.
//

import SwiftUI

struct HealthTabView: View {
    @EnvironmentObject var manager: HealthManager
    @State var selectedTab = "Home"
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tag("Home")
                .tabItem {
                    Image(systemName: "house")
                }
                .environmentObject(manager)
            ContentView()
                .tag("Content")
                .tabItem {
                    Image(systemName: "person")
                }
        }
    }
}

#Preview {
    HealthTabView()
}
