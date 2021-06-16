//
//  SitUpRobot.swift
//  Workout
//
//  Created by Juan Pablo Bustillo Guerrero on 28/05/21.
//

import Foundation
import SwiftUI

class SitUpRobot : ObservableObject{
    @Published var completedSitUps : Int = 0
    
    func addOneSitUp(){
        completedSitUps += 1
    }
    
    func resetSitUps(){
        completedSitUps = 0
        generateHapticFeedback()
    }
    
    func generateHapticFeedback() {
        UINotificationFeedbackGenerator().notificationOccurred(.success)
    }
}
