//
//  ResultCard.swift
//  Calorie
//
//  Created by Juan Pablo Bustillo Guerrero on 12/06/21.
//

import SwiftUI

struct ResultCard: View {
    
    @EnvironmentObject var model : CalorieModel
    
    var body: some View {
        ZStack{
            
            CardBackground()
            
            VStack{
                CardLabel(title: "Result", caption: "Your basal metabolic rate is: ")
                Text(String(format: "%0.0f", model.resultBMR))
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color(.systemBlue))
                
                Text("Calories/day")
                    .font(.caption)
                    .padding(.top, 15)
                    .foregroundColor(Color(.systemGray))
            }
            
        }.frame(width: 300, height: 500)
    }
}
