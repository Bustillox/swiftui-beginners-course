//
//  ContentView.swift
//  HelloWorld
//
//  Created by Juan Pablo Bustillo Guerrero on 28/02/21.
//

import SwiftUI

struct ContentView: View {
    var body : some View {
        Text("Hello my good Brothers.")
            .fontWeight(.bold)
            .font(.title)
            .frame(width: 1000, height: 1000)
            .background(Color(.systemBlue))
            .foregroundColor(Color(.white))
    }
}
