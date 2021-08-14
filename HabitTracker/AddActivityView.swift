//
//  AddActivityView.swift
//  HabitTracker
//
//  Created by Milo Wyner on 8/14/21.
//

import SwiftUI

struct AddActivityView: View {
    @State private var name: String = ""
    @State private var description: String = ""
    
    var body: some View {
        VStack {
            Text("Add new activity")
                .font(.title.bold())
                .padding(.top)
            
            TextField("Name", text: $name)
            TextField("Description", text: $description)
                .multilineTextAlignment(.leading)
            
            Button("Create") {
                // add the activity
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
        AddActivityView()
    }
}
