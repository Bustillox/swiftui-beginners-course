//
//  NextButton.swift
//  Calorie
//
//  Created by Juan Pablo Bustillo Guerrero on 12/06/21.
//

import SwiftUI

struct NextButton: View {
    
    @Binding var index : Int
    
    var body: some View {
        Image(systemName: "chevron.right.circle.fill")
            .font(.title)
            .foregroundColor(Color(.systemBlue))
            .frame(width: 100, height: 100)
            .padding(.top, 50)
            .onTapGesture() { moveToNextCard() }
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

