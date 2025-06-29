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
        VStack {
            LazyVGrid(columns: Array(repeating: GridItem(spacing: 20), count: 2)) {
                ForEach(manager.activities.sorted(by: { $0.value.id < $1.value.id }), id: \.key) { item in
                    ActivityCard(activity: item.value)
                }
            }
            .padding(.horizontal)
        }
        .onAppear {
            manager.fetchTodaySteps()
        }
      
    }
}

#Preview {
    HomeView()
}
