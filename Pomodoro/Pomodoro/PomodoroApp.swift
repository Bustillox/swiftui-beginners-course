//
//  PomodoroApp.swift
//  Pomodoro
//
//  Created by Juan Pablo Bustillo Guerrero on 07/06/21.
//

import SwiftUI

@main
struct PomodoroApp: App {
    
    @StateObject var pomodoro : PomodoroModel = PomodoroModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(pomodoro)
        }
    }
}
