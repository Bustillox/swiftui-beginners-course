//
//  ClassicaApp.swift
//  Classica
//
//  Created by Juan Pablo Bustillo Guerrero on 15/06/21.
//

import SwiftUI

@main
struct ClassicaApp: App {
    
    @StateObject var model : ClassicaModel = ClassicaModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(model)
        }
    }
}
