//
//  PushUpRobot.swift
//  Workout
//
//  Created by Juan Pablo Bustillo Guerrero on 28/05/21.
//

import Foundation
import SwiftUI


class PushUpRobot : ObservableObject {
    @Published var completedPushUps : Int = 0
        
    func addOnePushUp(){
        completedPushUps += 1
    }
        
    func resetPushUps(){
        completedPushUps = 0;
        generateHapticFeedback()
    }
    
    func generateHapticFeedback() {
        UINotificationFeedbackGenerator().notificationOccurred(.success)
    }
}
