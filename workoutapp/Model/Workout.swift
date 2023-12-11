//
//  Workout.swift
//  workoutapp
//
//  Created by Natascha Baumgartner on 02.07.23.
//

import Foundation

struct Workout: CustomStringConvertible, Identifiable {
    
    let id: UUID = UUID()
    var description: String { return "This is \(name)."}
    let name: String
    var imgName: String
}

