//
//  FocusModel.swift
//  Focus
//
//  Created by Juan Pablo Bustillo Guerrero on 28/05/21.
//

import SwiftUI

class FocusModel : ObservableObject {
    
    var timer : Timer?
    
    @Published var timeStart : Float = 0
    @Published var timeRemaining : Float = 0
    @Published var timerActive : Bool = false
    
    func runFocusTimer(time: Float){
        invalidateTimer()
        print("Timer activated!")
        initializeTimer(time: time)
    }
    
    func resetFocusTimer(){
        print("Timer reset")
        invalidateTimer()
    }
}

// MARK: - TimeRobot Functions

extension FocusModel {
    
    func initializeTimer(time: Float){
        timerActive = true
        timeStart = time
        timeRemaining = timeStart
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in self.runTimerActions() }
    }
    
    func invalidateTimer(){
        timerActive = false
        timer?.invalidate()
        timeStart = 0
        timeRemaining = 0
    }
    
    func runTimerActions(){
        
        if timeRemaining > 1 {
            reduceTime()
        } else {
            invalidateTimer()
        }
        
        checkRemainingTime()
    }
    
    func reduceTime(){
        timeRemaining -= 1
        
    }
    
    func checkRemainingTime(){
        print("Time remaining is \(timeRemaining)")
    }
}
