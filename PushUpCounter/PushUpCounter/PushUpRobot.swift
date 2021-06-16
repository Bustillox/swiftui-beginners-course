//
//  PushUpRobot.swift
//  PushUpCounter
//
//  Created by Juan Pablo Bustillo Guerrero on 25/05/21.
//

import SwiftUI

class PushUpRobot : ObservableObject {
    @Published var completedPushUps : Int = 0
    
    func addOnePushUp(){
        completedPushUps += 1
        print(completedPushUps)
    }
    
    func resetPushUps(){
        completedPushUps = 0;
        print(completedPushUps)
    }
}
