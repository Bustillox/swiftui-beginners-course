//
//  TimeButton.swift
//  Pomodoro
//
//  Created by Juan Pablo Bustillo Guerrero on 07/06/21.
//

import SwiftUI

struct TimeButton: View {
    
    @EnvironmentObject var pomodoro : PomodoroModel
    
    let quantity : Float
    let backgroundColor : Color
    
    var iconText : String { String(format: "%.0f", quantity)}
    
    var buttonOpacity : Double {
        if pomodoro.isTimerActive {
            return 0.3
        } else {
            return 1
        }
    }
    
    var body: some View {
        
        Image(systemName: "\(iconText).circle.fill")
            .font(.largeTitle)
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .foregroundColor(backgroundColor)
            .opacity(buttonOpacity)
            .onTapGesture { pomodoro.runPomodoroTimer(time: quantity) }
            .onLongPressGesture { pomodoro.stopAndInvalidateTimer() }
    }
}
