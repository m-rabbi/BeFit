//
//  ActivityCard.swift
//  BeFit
//
//  Created by Md Rabbi on 6/29/25.
//

import SwiftUI

struct ActivityCard: View {
    var body: some View {
        ZStack {
            Color(.systemGray6)
                .cornerRadius(15)
            VStack(spacing: 20) {
                HStack(alignment: .top) {
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Daily Steps")
                            .font(.system(size: 16))
                        
                        
                        Text("Goal: 10,000")
                            .font(.system(size: 12))
                            .foregroundStyle(.secondary)
                    }
                    
                    Spacer()
                    
                    Image(systemName: "figure.walk")
                        .foregroundStyle(.green)
                    
                }
                
                Text("4,295")
                    .font(.system(size: 24))
            }
            .padding()
        }
    }
}

#Preview {
    ActivityCard()
}
