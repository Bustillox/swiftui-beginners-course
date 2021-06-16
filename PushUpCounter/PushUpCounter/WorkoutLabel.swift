//
//  WorkoutLabel.swift
//  PushUpCounter
//
//  Created by Juan Pablo Bustillo Guerrero on 25/05/21.
//

import SwiftUI

struct WorkoutLabel: View {
    
    let label : String
    
    var body: some View {
        Text(label)
            .font(.caption)
            .fontWeight(.bold)
            .foregroundColor(Color(.systemGray))
            .kerning(2)
            .padding(.top, 20)
            .padding(.bottom, 20)
    }
}
