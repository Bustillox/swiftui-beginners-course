//
//  AgeCard.swift
//  Calorie
//
//  Created by Juan Pablo Bustillo Guerrero on 12/06/21.
//

import SwiftUI

struct AgeCard: View {
    
    @EnvironmentObject var model : CalorieModel
    
    var body: some View {
        ZStack{
            
            CardBackground()
            
            VStack{
                CardLabel(title: "Age", caption: "Enter your age")
                SliderValue(value: model.age)
                Slider(value: $model.age, in: 15...80, step: 1.0)
                    .frame(width:150)
            }
            
        }.frame(width: 300, height: 500)
    }
}
