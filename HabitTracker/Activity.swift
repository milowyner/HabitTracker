//
//  Activity.swift
//  HabitTracker
//
//  Created by Milo Wyner on 8/14/21.
//

struct Activity: Identifiable {
    let name: String
    let description: String
    var completed: Int = 0
    
    var id: String { name }
}
