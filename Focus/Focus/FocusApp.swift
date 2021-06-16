//
//  FocusApp.swift
//  Focus
//
//  Created by Juan Pablo Bustillo Guerrero on 28/05/21.
//

import SwiftUI

@main
struct FocusApp: App {
    
    @StateObject var model : FocusModel = FocusModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(model)
        }
    }
}
