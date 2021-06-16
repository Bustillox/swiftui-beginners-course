//
//  ContentView.swift
//  PushUpCounter
//
//  Created by Juan Pablo Bustillo Guerrero on 18/05/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            PushUpButton()
            WorkoutLabel(label: "PUSH-UPS")
        }
    }
}
