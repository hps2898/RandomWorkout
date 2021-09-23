//
//  CoreExerciseView.swift
//  RandomWorkout
//
//  Created by Harpuneet Singh on 2021-07-16.
//

import SwiftUI

struct CoreExerciseView: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Exercises for Core:")
                .font(.title2)
                .bold()
            Text("Planks")
            Text("Sit-ups")
            Text("Leg raise")
            Text("Toe touches")
            Text("Bear crawl")
        }
    }
}

struct CoreExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        CoreExerciseView()
    }
}
