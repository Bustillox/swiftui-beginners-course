//
//  SitUpButton.swift
//  Workout
//
//  Created by Juan Pablo Bustillo Guerrero on 28/05/21.
//

import SwiftUI

struct SitUpButton : View {
    
    @StateObject var sitUpRobot : SitUpRobot = SitUpRobot()
    
    var body : some View {
        Text("\(sitUpRobot.completedSitUps)")
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(Color(.white))
            .frame(width: 100, height: 100, alignment: .center)
            .background(Color(.systemRed))
            .clipShape(Circle())
            .onTapGesture(perform: sitUpRobot.addOneSitUp)
            .onLongPressGesture(perform: sitUpRobot.resetSitUps)
    }
}
