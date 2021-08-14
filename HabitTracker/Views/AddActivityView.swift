//
//  AddActivityView.swift
//  HabitTracker
//
//  Created by Milo Wyner on 8/14/21.
//

import SwiftUI

struct AddActivityView: View {
    @ObservedObject var activities: Activities
    
    @State private var name: String = ""
    @State private var description: String = ""
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Text("Add new activity")
                .font(.title.bold())
                .padding(.top)
            
            TextField("Name", text: $name)
            TextField("Description", text: $description)
                .multilineTextAlignment(.leading)
            
            Button("Create") {
                let activity = Activity(name: name, description: description)
                activities.list.append(activity)
                activities.save()
                presentationMode.wrappedValue.dismiss()
            }
            .padding()
            
            Spacer()
        }
        .padding()
        .textFieldStyle(RoundedBorderTextFieldStyle())
    }
}

struct AddActivityView_Previews: PreviewProvider {
    static var previews: some View {
        AddActivityView(activities: Activities([]))
    }
}
