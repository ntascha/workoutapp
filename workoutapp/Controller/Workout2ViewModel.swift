//
//  Workout2ViewModel.swift
//  workoutapp
//
//  Created by Natascha Baumgartner on 02.07.23.
//

import Foundation

class Workout2ViewModel {
    init(){
        Task{
            if let workout = await loadData() {
                print("We got cat: \(workout.title).")
            }
        }
        
        @Sendable func loadData() async -> Workout2?{
            print("Loading in the background...")
            
            var buildURL = URLComponents()
            buildURL.scheme = "http"
            buildURL.host = "localhost"
            buildURL.port = 7070
            buildURL.path = "/household.json"
            
            guard let url = buildURL.url else {
                print ("Sorry, could not create a valid url.")
                return nil
            }
            print("get data from \(url)")
            
            let req = URLRequest(url: url)
            do {
                let (data, resp) = try await URLSession.shared.data(for: req)
                print("We got data: \(data.debugDescription)")
                print("We got resp: \(resp.debugDescription)")
                
                let decoder = JSONDecoder()
                let workout2 = try decoder.decode(Workout2.self, from: data)
                print("we created: \(workout2)")
                return workout2
                
            } catch let err {
                print ("ERR: sorry, we could not get any data: \(err)")
                return nil
            }
        }
    }
}

