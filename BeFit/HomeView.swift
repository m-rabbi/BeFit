//
//  HomeView.swift
//  BeFit
//
//  Created by Md Rabbi on 6/29/25.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var manager: HealthManager

    
    var body: some View {
        LazyVGrid(columns: Array(repeating: GridItem(spacing: 20), count: 2)) {
            ActivityCard()
            
            ActivityCard()
        }
        .padding(.horizontal)
      
    }
}

#Preview {
    HomeView()
}
