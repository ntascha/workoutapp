//
//  ContentView.swift
//  workoutapp
//
//  Created by Natascha Baumgartner on 02.07.23.
//

import SwiftUI

struct ContentView: View {
    @State private var currTab = 2
    
    var body: some View {
        VStack {
            TabView(selection: $currTab) {
                Workouts().tabItem {
                    Image(systemName: "sportscourt")
                        .foregroundColor(.pink)
                    Text("Workouts")
                }.tag(1)
                About().tabItem {
                    Image(systemName: "house")
                        .foregroundColor(.pink)
                    Text("About")
                }.tag(2)
            }
            .accentColor(Color.pink)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

