//
//  BeFitApp.swift
//  BeFit
//
//  Created by Md Rabbi on 6/28/25.
//

import SwiftUI

@main
struct BeFitApp: App {
    @StateObject var manager = HealthManager()
    
    var body: some Scene {
        WindowGroup {
            BeActiveTabView()
                .environmentObject(manager)
        }
    }
}
