//
//  HealthManager.swift
//  BeFit
//
//  Created by Md Rabbi on 6/29/25.
//

import Foundation
import HealthKit

class HealthManager: ObservableObject {
    
    let healtStore = HKHealthStore()
    
    init() {
        let steps = HKQuantityType(.stepCount)
        
        let healthTypes: Set = [steps]
        
        Task {
            do {
                try await healtStore.requestAuthorization(toShare: [], read: healthTypes)
                
            } catch {
                print("Error Fetching Health Data")
            }
            
        }
        
        
    }
    
}
