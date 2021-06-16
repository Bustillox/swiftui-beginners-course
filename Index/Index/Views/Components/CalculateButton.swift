//
//  CalculateButton.swift
//  Index
//
//  Created by Juan Pablo Bustillo Guerrero on 15/06/21.
//

import SwiftUI

struct CalculateButton: View {
    
    @Binding var index : Int
    @EnvironmentObject var model : IndexModel
    
    var body: some View {
        Text("Calculate")
            .font(.caption2)
            .fontWeight(.bold)
            .padding(.all, 8)
            .foregroundColor(Color(.white))
            .background(Color(.systemGreen))
            .cornerRadius(20)
            .frame(height:100)
            .onTapGesture {
                model.calculateBMI()
                moveToNextCard()
            }
    }
    
    func moveToNextCard(){
        withAnimation{
            if index < 4 {
                index += 1
            } else {
                index = 0
            }
        }
    }
}
