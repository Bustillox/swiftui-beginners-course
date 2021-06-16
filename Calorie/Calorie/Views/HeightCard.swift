//
//  HeightCard.swift
//  Calorie
//
//  Created by Juan Pablo Bustillo Guerrero on 12/06/21.
//

import SwiftUI

struct HeightCard: View {
    
    @EnvironmentObject var model : CalorieModel
    
    var body: some View {
        ZStack{
            
            CardBackground()
            
            VStack{
                CardLabel(title: "Height", caption: "Enter your height (Cm)")
                SliderValue(value: model.height)
                Slider(value: $model.height, in: 1...250, step: 1.0)
                    .frame(width:150)
            }
            
        }.frame(width: 300, height: 500)
    }
}
