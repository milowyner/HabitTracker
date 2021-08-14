//
//  Activities.swift
//  HabitTracker
//
//  Created by Milo Wyner on 8/14/21.
//

import SwiftUI

class Activities: ObservableObject {
    @Published var list: [Activity]
    
    init(_ list: [Activity]) {
        self.list = list
    }
}
