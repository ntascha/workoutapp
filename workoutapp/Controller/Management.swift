//
//  Management.swift
//  workoutapp
//
//  Created by Natascha Baumgartner on 02.07.23.
//

import Foundation

class WorkoutTitle {
    var workouts:[Workout] = []
    var title = "Workout Ideas"
    
    //singleton pattern:
    private init(){}
    static let sharedInstance = WorkoutTitle()
}

