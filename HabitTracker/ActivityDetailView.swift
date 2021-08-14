//
//  ActivityDetailView.swift
//  HabitTracker
//
//  Created by Milo Wyner on 8/14/21.
//

import SwiftUI

struct ActivityDetailView: View {
    let activity: Activity
    
    var body: some View {
        VStack(spacing: 16) {
            Text(activity.description)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Spacer()

            HStack(spacing: 0) {
                Text("Completed ")
                Text("\(activity.completedCount)")
                    .bold()
                Text(" times")
            }
            .font(.title2)
            .padding(.vertical)
            
            Button(action: {
                // increment completed count
            }, label: {
                Image(systemName: "checkmark")
                    .font(.title.bold())
                    .foregroundColor(.white)
                    .padding()
                    .background(
                        Circle()
                            .fill(Color.green)
                    )
            })
        }
        .padding()
        .navigationTitle(activity.name)
    }
}

struct ActivityDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ActivityDetailView(activity: Activity(name: "Learn Spanish", description: "I want to learn Spanish so I can speak it fluently."))
        }
    }
}
