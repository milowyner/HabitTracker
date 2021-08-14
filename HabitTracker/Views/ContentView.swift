//
//  ContentView.swift
//  HabitTracker
//
//  Created by Milo Wyner on 8/14/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var activities = Activities()
    
    @State private var showingAddActivity = false
    
    var body: some View {
        NavigationView {
            List(0..<activities.list.count, id: \.self) { index in
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
                AddActivityView(activities: activities)
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
