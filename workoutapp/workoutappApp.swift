//
//  workoutappApp.swift
//  workoutapp
//
//  Created by Natascha Baumgartner on 02.07.23.
//

import SwiftUI

@main
struct workoutappApp: App {
    let household2vm = Workout2ViewModel()
        
        let b = Battery(title: "backup", level: 5)
        
        var mgmt = WorkoutTitle.sharedInstance
        
        var body: some Scene {
            WindowGroup {
                ContentView()
                    .onAppear() {
                        mgmt.workouts.append(Workout(name: "Dance", imgName: "image-1"))
                        mgmt.workouts.append(Workout(name: "Meditation", imgName: "image-2"))
                        mgmt.workouts.append(Workout(name: "Pilates", imgName: "image-3"))
                        mgmt.workouts.append(Workout(name: "Yoga", imgName: "image-4"))
                        mgmt.workouts.append(Workout(name: "Weights", imgName: "image-5"))
                    }
            }
        }

}
