//
//  TimeBar.swift
//  Pomodoro
//
//  Created by Juan Pablo Bustillo Guerrero on 07/06/21.
//

import SwiftUI

struct TimeBar: View {
    
    @EnvironmentObject var model : PomodoroModel
    
    let width : CGFloat = 5
    let height: CGFloat = 350
    let radius: CGFloat = 5
    
    var progressBarHeight : CGFloat {
        if  model.isTimerActive == true{
            return CGFloat(model.timeRemaining / model.timeStart * 350);
        } else {
            return 0
        }
    }
    
    var progressBarColor : Color {
        if model.timeStart == 10 {
            return Color(.systemIndigo)
        } else if model.timeStart == 25 {
            return Color(.systemBlue)
        } else if model.timeStart == 50 {
            return Color(.systemPurple)
        }else{
            return Color(.systemGreen)
        }
    }
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: radius)
                .foregroundColor(Color(.systemGray5))
                .frame(width: width, height: height, alignment: .center)
            
            VStack{
                Spacer()
                
                RoundedRectangle(cornerRadius: radius)
                    .foregroundColor(progressBarColor)
                    .frame(width: width, height: progressBarHeight, alignment: .center)
            }.frame(width: width, height: height, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
    }
}
