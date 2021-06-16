//
//  SliderValue.swift
//  Calorie
//
//  Created by Juan Pablo Bustillo Guerrero on 14/06/21.
//

import SwiftUI

struct SliderValue: View {
    
    var value : Double
    
    var body: some View {
        Text(String(format: "%0.0f", value))
            .font(.title)
            .frame(width:80, height:80)
            .foregroundColor(Color(.white))
            .background(Color(.systemBlue))
            .clipShape(Circle())
    }
}
