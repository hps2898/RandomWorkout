//
//  ContentView.swift
//  RandomWorkout
//
//  Created by Harpuneet Singh on 2021-07-16.
//

import SwiftUI

struct ContentView: View {
    @State private var exerciseview: Bool = false
    let workouts = ["Arms", "Legs", "Back", "Core"]
    @State private var workout = ""
    
    var body: some View {
        VStack(spacing: 10) {
            Text("Random workout for the day:")
                .bold()
                .font(.title)
            
            Button(workout) {
                exerciseview = true
            }
            .font(.largeTitle)
            .sheet(isPresented: $exerciseview) {
                switch workout {
                case "Arms": ArmExerciseView()
                case "Legs": LegExerciseView()
                case "Back": BackExerciseView()
                case "Core": CoreExerciseView()
                default:
                    Text("An error has occurred.")
                }
            }
        }
        .onAppear {
            workoutGen()
        }
    }
    
    func workoutGen() {
        let todayDate = Calendar.current.dateComponents([.day], from: Date())
        if let workout = UserDefaults.standard.string(forKey: "workout") {
            let savedDate = UserDefaults.standard.integer(forKey: "workout_saved_date")
            
            if savedDate == todayDate.day {
                self.workout = workout
                return
            }
        }

        workout = workouts.randomElement() ?? "Error."
        
        UserDefaults.standard.set(workout, forKey: "workout")
        UserDefaults.standard.set(todayDate.day, forKey: "workout_saved_date")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
