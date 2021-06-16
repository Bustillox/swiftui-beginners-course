//
//  TimeLabel.swift
//  Focus
//
//  Created by Juan Pablo Bustillo Guerrero on 28/05/21.
//

import SwiftUI

struct TimeLabel: View {
    
    @EnvironmentObject var model : FocusModel

    var timeRemainingString : String { String(model.timeRemaining) }
    let completedIcon : String = "checkmark.circle.fill"
    
    var body: some View {
        ZStack{
            
            if model.timerActive == true {
                Text(timeRemainingString)
                    .font(.largeTitle)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color(.systemGray))
                    .onTapGesture() { model.runFocusTimer(time: 50) }
                    .onLongPressGesture(perform: model.resetFocusTimer)
                
            } else {
                Image(systemName: completedIcon)
                    .font(.largeTitle)
                    .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color(.systemGreen))
                    .onTapGesture() { model.runFocusTimer(time: 50) }
            }
        }
    }
}
