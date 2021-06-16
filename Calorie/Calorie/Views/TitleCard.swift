//
//  TitleCard.swift
//  Calorie
//
//  Created by Juan Pablo Bustillo Guerrero on 12/06/21.
//

import SwiftUI

struct TitleCard: View {
    var body: some View {
        ZStack{
            CardBackground()
            CardLabel(title: "Calorie", caption: "BMR Calculator")
        }.frame(width: 300, height: 500, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}
