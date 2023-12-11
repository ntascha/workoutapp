//
//  Workouts.swift
//  workoutapp
//
//  Created by Natascha Baumgartner on 02.07.23.
//

import SwiftUI

struct Workouts: View {
    @State private var currentIndex = 0
    var mgmt = WorkoutTitle.sharedInstance
    
    var body: some View {
        VStack {
            Spacer()

            Text(mgmt.title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.primary)

            TabView(selection: $currentIndex) {
                ForEach(mgmt.workouts.indices, id: \.self) { index in
                    Image(mgmt.workouts[index].imgName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxHeight: 300) // Set the maximum height for the images
                        .tag(index)
                }
            }
            .tabViewStyle(PageTabViewStyle()) // Set the TabView style to PageTabViewStyle

            Text("\(mgmt.workouts[currentIndex].name)")

            Spacer()
        }
        .padding()
    }
}



struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        Workouts()
    }
}


