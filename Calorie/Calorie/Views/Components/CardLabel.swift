//
//  CardLabel.swift
//  Calorie
//
//  Created by Juan Pablo Bustillo Guerrero on 12/06/21.
//

import SwiftUI

struct CardLabel: View {
    
    let title : String
    let caption : String
    
    var body: some View {
        VStack{
            Text(title)
                .font(.title)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color(.systemBlue))
                .padding(.bottom, 10)
            
            Text(caption)
                .font(.caption)
                .foregroundColor(Color(.systemGray))
                .padding(.bottom, 30)
            
        }
    }
}
