//
//  About.swift
//  workoutapp
//
//  Created by Natascha Baumgartner on 02.07.23.
//

import SwiftUI

struct About: View {
    var body: some View {
        VStack {
            
            Spacer()
            
            Image("aboutme") // Add your additional picture here
                .resizable()
                .scaledToFit()
                .frame(maxHeight: 100) // Set the desired height for the additional picture
                .cornerRadius(10) // Apply corner radius for a rounded appearance
                .padding(.top, 20)
            
      
            Text("About me:")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.primary)
            
            VStack(alignment: .leading) {
                FactRow(fact: "Name: Natascha")
                FactRow(fact: "Age: 24 years")
            }
            .padding()
            
            
            
            Text("My Fitnessplan:")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.primary)
    
            VStack(alignment: .leading) {
                FactRow(fact: "Day 1: Legs")
                FactRow(fact: "Day 2: Chest and Triceps")
                FactRow(fact: "Day 3: Shoulders and Abs")
                FactRow(fact: "Day 4: Back and Biceps ")
                FactRow(fact: "Day 5: Cardio")
            }
            .padding()
            
            Spacer()
        }
    }
}


struct FactRow: View {
    var fact: String
    
    var body: some View {
        HStack {
            Image(systemName: "checkmark.square")
                .foregroundColor(.pink)
            Text(fact)
        }
        .padding(.bottom, 5)
    }
}

struct About_Previews: PreviewProvider {
    static var previews: some View {
        About()
    }
}

