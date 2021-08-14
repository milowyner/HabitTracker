//
//  Activities.swift
//  HabitTracker
//
//  Created by Milo Wyner on 8/14/21.
//

import SwiftUI

fileprivate let key = "activities"

class Activities: ObservableObject {
    @Published var list: [Activity]
    
    init() {
        if let data = UserDefaults.standard.data(forKey: key),
           let activities = try? JSONDecoder().decode([Activity].self, from: data) {
            list = activities
        } else {
            list = [
                Activity(name: "Learn Spanish", description: "I want to learn Spanish so I can speak it fluently."),
                Activity(name: "Practice the piano", description: "I want to be able to play the piano so I can become the next Mozart."),
                Activity(name: "Exercise", description: "I want to exercise every day so I can have a fit body like Dwayne \"The Rock\" Johnson.")
            ]
        }
    }
    
    init(_ list: [Activity]) {
        self.list = list
    }
    
    func save() {
        if let data = try? JSONEncoder().encode(list) {
            UserDefaults.standard.set(data, forKey: key)
        }
    }
}
