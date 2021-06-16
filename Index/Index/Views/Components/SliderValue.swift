//
//  SliderValue.swift
//  Index
//
//  Created by Juan Pablo Bustillo Guerrero on 15/06/21.
//

import SwiftUI

struct SliderValue: View {
    
    let value: Double
    let hasDecimal: Bool
    
    var body: some View {
        
        if hasDecimal == true {
            
            Text(String(format: "%0.1f", value))
                    .font(.title)
                    .frame(width: 80, height: 80)
                    .foregroundColor(Color(.white))
                    .background(Color(.systemGreen))
                    .clipShape(Circle())
            
        } else {
            Text(String(format: "%0.0f", value))
                    .font(.title)
                    .frame(width: 80, height: 80)
                    .foregroundColor(Color(.white))
                    .background(Color(.systemGreen))
                    .clipShape(Circle())
        }
        
    }
}
