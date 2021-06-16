//
//  ContentView.swift
//  Calorie
//
//  Created by Juan Pablo Bustillo Guerrero on 07/06/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var activeCardIndex : Int = 0
    
    @EnvironmentObject var model : CalorieModel
    
    var body: some View {
        VStack{
            Spacer()
            
            if activeCardIndex == 0 {
                TitleCard()
            } else if activeCardIndex == 1 {
                GenderCard()
            } else if activeCardIndex == 2 {
                AgeCard()
            } else if activeCardIndex == 3 {
                HeightCard()
            } else if activeCardIndex == 4 {
                WeightCard()
            } else if activeCardIndex == 5 {
                ResultCard()
            }
            
            if activeCardIndex <= 3 || activeCardIndex == 5 {
                NextButton(index: $activeCardIndex)
            } else {
                CalculateButton(index: $activeCardIndex)
            }
        }
    }  
}
