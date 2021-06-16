//
//  TitleCard.swift
//  Index
//
//  Created by Juan Pablo Bustillo Guerrero on 14/06/21.
//

import SwiftUI

struct TitleCard: View {
    
    var body: some View {
        ZStack{
            CardBackground()
            CardLabel(title: "Index", caption: "BMI Calculator")
        }.frame(width: 300, height: 500)
    }
}
