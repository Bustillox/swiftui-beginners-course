//
//  CalculateButton.swift
//  Calorie
//
//  Created by Juan Pablo Bustillo Guerrero on 14/06/21.
//

import SwiftUI

struct CalculateButton: View {
    
    @Binding var index : Int
    @EnvironmentObject var model : CalorieModel
    
    var body: some View {
        Text("Calculate")
            .font(.caption2)
            .fontWeight(.bold)
            .padding(.all, 8)
            .foregroundColor(Color(.white))
            .background(Color(.systemBlue))
            .cornerRadius(20)
            .frame(height:100)
            .onTapGesture() {
                model.calculateBMR()
                moveToNextCard()
            }
    }
    
    func moveToNextCard(){
        withAnimation{
            if index <= 4 {
                index += 1
            } else {
                index = 0
            }
        }
    }
}
