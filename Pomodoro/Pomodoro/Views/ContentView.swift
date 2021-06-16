//
//  ContentView.swift
//  Pomodoro
//
//  Created by Juan Pablo Bustillo Guerrero on 07/06/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            TimeBar()
            
            TimeLabel()
            
            HStack{
                TimeButton(quantity: 10, backgroundColor: Color(.systemIndigo))
                TimeButton(quantity: 25, backgroundColor: Color(.systemBlue))
                TimeButton(quantity: 50, backgroundColor: Color(.systemPurple))
            }
        }
    }
}
