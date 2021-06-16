//
//  WaltzApp.swift
//  Waltz
//
//  Created by Juan Pablo Bustillo Guerrero on 15/06/21.
//

import SwiftUI

@main
struct WaltzApp: App {
    
    @StateObject var model : WaltzModel = WaltzModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(model)
                .onAppear(){ UIApplication.shared.isIdleTimerDisabled = true }
                .onDisappear() { UIApplication.shared.isIdleTimerDisabled = false }
        }
    }
}
