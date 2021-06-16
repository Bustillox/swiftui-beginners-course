//
//  TimeLabel.swift
//  Pomodoro
//
//  Created by Juan Pablo Bustillo Guerrero on 07/06/21.
//

import SwiftUI

struct TimeLabel: View {
    
    @EnvironmentObject var pomodoro : PomodoroModel
    
    let imageIcon : String = "checkmark.circle.fill"
    
    var body: some View {
        ZStack{
            if pomodoro.isTimerActive {
                Text(String(format: "%.0f", pomodoro.timeRemaining))
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color(.systemGray))
                    .onLongPressGesture { pomodoro.stopAndInvalidateTimer() }
            } else {
                Image(systemName: imageIcon)
                    .font(.largeTitle)
                    .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color(.systemGreen))
            }
        }
    }
}
