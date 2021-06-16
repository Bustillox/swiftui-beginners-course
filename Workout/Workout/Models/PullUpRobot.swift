//
//  PullUpRobot.swift
//  Workout
//
//  Created by Juan Pablo Bustillo Guerrero on 28/05/21.
//

import Foundation
import SwiftUI

class PullUpRobot : ObservableObject{
    @Published var completedPullUps : Int = 0
    
    func addOnePullUp(){
        completedPullUps += 1
    }
    
    func resetPullUps(){
        completedPullUps = 0
        generateHapticFeedback()
    }
    
    func generateHapticFeedback() {
        UINotificationFeedbackGenerator().notificationOccurred(.success)
    }
}
