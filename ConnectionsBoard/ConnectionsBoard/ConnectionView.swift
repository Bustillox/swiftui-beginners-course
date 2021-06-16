//
//  Connection.swift
//  ConnectionsBoard
//
//  Created by Juan Pablo Bustillo Guerrero on 18/05/21.
//

import Foundation
import SwiftUI

struct ConnectionView : View{
    
    let isDemonSlayer : Bool
    let characterName : String
    
    var body : some View {
        
        let borderColor : Color = isDemonSlayer ? Color.blue : Color.red;
        
        Image(characterName)
            .resizable()
            .frame(width:80, height: 80, alignment: .center)
            .aspectRatio(contentMode: .fill)
            .overlay(Circle().stroke(borderColor, lineWidth: 4))
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)

    }
}
