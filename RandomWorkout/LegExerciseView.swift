//
//  LegExerciseView.swift
//  RandomWorkout
//
//  Created by Harpuneet Singh on 2021-07-16.
//

import SwiftUI

struct LegExerciseView: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Exercises for Legs:")
                .font(.title2)
                .bold()
            Text("Squats")
            Text("Lunges")
            Text("Step ups")
            Text("Leg curls")
            Text("Leg press")
        }
    }
}

struct LegExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        LegExerciseView()
    }
}
