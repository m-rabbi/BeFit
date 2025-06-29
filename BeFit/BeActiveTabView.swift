//
//  BeActiveTabView.swift
//  BeFit
//
//  Created by Md Rabbi on 6/29/25.
//

import SwiftUI

struct BeActiveTabView: View {
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
    BeActiveTabView()
}
