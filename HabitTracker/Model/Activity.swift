//
//  Activity.swift
//  HabitTracker
//
//  Created by Milo Wyner on 8/14/21.
//

struct Activity: Identifiable, Codable {
    let name: String
    let description: String
    var completedCount: Int = 0
    
    var id: String { name }
}
