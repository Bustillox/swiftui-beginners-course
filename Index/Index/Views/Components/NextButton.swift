//
//  NextButton.swift
//  Index
//
//  Created by Juan Pablo Bustillo Guerrero on 14/06/21.
//

import SwiftUI

struct NextButton: View {
    
    @Binding var index : Int
    
    var body: some View {
        Image(systemName: "chevron.right.circle.fill")
            .font(.largeTitle)
            .foregroundColor(Color(.systemGreen))
            .frame(width: 100, height: 100)
            .padding(.top, 50)
            .onTapGesture { moveToNextCard() }
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
