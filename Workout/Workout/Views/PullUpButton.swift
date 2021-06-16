//
//  PullUpButton.swift
//  Workout
//
//  Created by Juan Pablo Bustillo Guerrero on 28/05/21.
//

import SwiftUI

struct PullUpButton : View {
    
    @StateObject var pullUpRobot : PullUpRobot = PullUpRobot()
    
    var body : some View {
        Text("\(pullUpRobot.completedPullUps)")
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(Color(.white))
            .frame(width: 100, height: 100, alignment: .center)
            .background(Color(.systemBlue))
            .clipShape(Circle())
            .onTapGesture(perform: pullUpRobot.addOnePullUp)
            .onLongPressGesture(perform: pullUpRobot.resetPullUps)
    }
}
