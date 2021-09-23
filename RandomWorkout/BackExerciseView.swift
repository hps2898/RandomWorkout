//
//  BackExerciseView.swift
//  RandomWorkout
//
//  Created by Harpuneet Singh on 2021-07-16.
//

import SwiftUI

struct BackExerciseView: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Exercises for Back:")
                .font(.title2)
                .bold()
            Text("Pull-ups")
            Text("Superman stretches")
            Text("Dumbbell rows")
            Text("Deadlift")
            Text("Lat pulldowns")
        }
    }
}

struct BackExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        BackExerciseView()
    }
}
