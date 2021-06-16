//
//  CalorieApp.swift
//  Calorie
//
//  Created by Juan Pablo Bustillo Guerrero on 07/06/21.
//

import SwiftUI

@main
struct CalorieApp: App {
    
    @StateObject var model : CalorieModel = CalorieModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(model)
        }
    }
}
