//
//  ContentView.swift
//  Workout
//
//  Created by Juan Pablo Bustillo Guerrero on 25/05/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            VStack{
                PushUpButton()
                WorkoutLabelView(label: "PUSH-UPS")
            }
            
            HStack(spacing: 75){
                VStack{
                    PullUpButton()
                    WorkoutLabelView(label: "PULL-UPS")
                }
                
                VStack{
                    SitUpButton()
                    WorkoutLabelView(label: "SIT-UPS")
                }
            }
        }
    }
}
