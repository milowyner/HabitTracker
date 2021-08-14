//
//  ContentView.swift
//  HabitTracker
//
//  Created by Milo Wyner on 8/14/21.
//

import SwiftUI

struct ContentView: View {
    @State private var activities = Activities([
        Activity(name: "Learn Spanish", description: "I want to learn Spanish so I can speak it fluently."),
        Activity(name: "Practice the piano", description: "I want to be able to play the piano so I can become the next Mozart."),
        Activity(name: "Exercise", description: "I want to exercise every day so I can have a fit body like Dwayne \"The Rock\" Johnson.")
    ])
    
    @State private var showingAddActivity = false
    
    var body: some View {
        NavigationView {
            List(0..<activities.list.count) { index in
                NavigationLink(activities.list[index].name, destination: ActivityDetailView(activities: activities, index: index))
            }
            .navigationTitle("Habit Tracker")
            .navigationBarItems(trailing: Button(action: {
                showingAddActivity = true
            }, label: {
                Image(systemName: "plus")
                    .imageScale(.large)
            }))
            .sheet(isPresented: $showingAddActivity, content: {
                AddActivityView()
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
