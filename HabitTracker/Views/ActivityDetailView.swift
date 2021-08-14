//
//  ActivityDetailView.swift
//  HabitTracker
//
//  Created by Milo Wyner on 8/14/21.
//

import SwiftUI

struct ActivityDetailView: View {
    @ObservedObject var activities: Activities
    let index: Int
    
    var body: some View {
        VStack(spacing: 16) {
            Text(activities.list[index].description)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Spacer()

            HStack(spacing: 0) {
                Text("Completed ")
                Text("\(activities.list[index].completedCount)")
                    .bold()
                Text(" times")
            }
            .font(.title2)
            .padding(.vertical)
            
            Button(action: {
                activities.list[index].completedCount += 1
                activities.save()
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
        .navigationTitle(activities.list[index].name)
    }
}

struct ActivityDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ActivityDetailView(activities: Activities([Activity(name: "Learn Spanish", description: "I want to learn Spanish so I can speak it fluently.")]), index: 0)
        }
    }
}
