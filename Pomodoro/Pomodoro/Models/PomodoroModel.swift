//
//  PomodoroModel.swift
//  Pomodoro
//
//  Created by Juan Pablo Bustillo Guerrero on 07/06/21.
//

import SwiftUI

class PomodoroModel : ObservableObject{
    var timer : Timer?
    
    @Published var timeStart : Float = 0
    @Published var timeRemaining: Float = 0
    @Published var isTimerActive: Bool = false
    
    func runPomodoroTimer(time: Float){
        
        if isTimerActive || timeStart != time || timeRemaining != time {
            stopAndInvalidateTimer()
        }
        
        initializeTimer(time: time)
    }
}

//MARK: - Private Functions
    
extension PomodoroModel{
    func initializeTimer(time: Float){
        isTimerActive = true
        timeStart = time
        timeRemaining = timeStart
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in self.runTimerActions() }
    }
    
    func stopAndInvalidateTimer(){
        isTimerActive = false
        timer?.invalidate()
        timeStart = 0
        timeRemaining = 0
    }
    
    func runTimerActions(){
        if timeRemaining > 1 {
            reduceTime()
        } else {
            stopAndInvalidateTimer()
        }
    }
    
    func reduceTime(){
        timeRemaining -= 1
    }
}

