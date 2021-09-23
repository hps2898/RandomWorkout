//
//  ArmExerciseView.swift
//  RandomWorkout
//
//  Created by Harpuneet Singh on 2021-07-16.
//

import SwiftUI

struct ArmExerciseView: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Exercises for Arms:")
                .font(.title2)
                .bold()
            Text("Arm circles")
            Text("Tricep dips")
            Text("Bicep curls")
            Text("Pushups")
            Text("Dumbbell Row")
        }
    }
}

struct ArmExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        ArmExerciseView()
    }
}
