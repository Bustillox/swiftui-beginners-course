//
//  WeightCard.swift
//  Calorie
//
//  Created by Juan Pablo Bustillo Guerrero on 12/06/21.
//

import SwiftUI

struct WeightCard: View {
    
    @EnvironmentObject var model : CalorieModel
    
    var body: some View {
        ZStack{
            
            CardBackground()
            
            VStack{
                CardLabel(title: "Weight", caption: "Enter your weight (Kg)")
                SliderValue(value: model.weight)
                Slider(value: $model.weight, in: 1...250, step: 1.0)
                    .frame(width:150)
            }
            
        }.frame(width: 300, height: 500)
    }
}
