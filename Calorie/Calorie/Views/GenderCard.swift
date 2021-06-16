//
//  GenderCard.swift
//  Calorie
//
//  Created by Juan Pablo Bustillo Guerrero on 12/06/21.
//

import SwiftUI

struct GenderCard: View {
    
    @EnvironmentObject var model : CalorieModel
    
    var body: some View {
        ZStack{
            
            CardBackground()
            
            VStack{
                CardLabel(title: "Gender", caption: "Select your gender")
                
                Picker("Gender", selection: $model.gender){
                    Text("Male").tag(Gender.male)
                    Text("Female").tag(Gender.female)
                }
                .pickerStyle(SegmentedPickerStyle())
                .frame(width: 150)
            }
        }.frame(width: 300, height: 500)
    }
}
