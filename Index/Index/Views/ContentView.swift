//
//  ContentView.swift
//  Index
//
//  Created by Juan Pablo Bustillo Guerrero on 14/06/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var activeCardIndex : Int = 0
    
    var body: some View {
        VStack{
            Spacer()
            if activeCardIndex == 0 {
                TitleCard()
            } else if activeCardIndex == 1 {
                UnitCard()
            } else if activeCardIndex == 2 {
                HeightCard()
            } else if activeCardIndex == 3 {
                WeightCard()
            } else if activeCardIndex == 4 {
                ResultCard()
            }
            
            if activeCardIndex <= 2 || activeCardIndex == 4 {
                NextButton(index: $activeCardIndex)
            } else {
                CalculateButton(index: $activeCardIndex)
            }
        }
    }
}
