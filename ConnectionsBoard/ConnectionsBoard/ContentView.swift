//
//  ContentView.swift
//  ConnectionsBoard
//
//  Created by Juan Pablo Bustillo Guerrero on 18/05/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            
            Divider().rotationEffect(.degrees(30))
            Divider().rotationEffect(.degrees(90))
            Divider().rotationEffect(.degrees(-30))
            
            HStack{
                ConnectionView(isDemonSlayer: true, characterName: "giyu")
                    .rotationEffect(.degrees(-30));
                Spacer()
                ConnectionView(isDemonSlayer: false, characterName: "nezuko")
                    .rotationEffect(.degrees(-30));
                
            }.rotationEffect(.degrees(30))
            
            HStack{
                ConnectionView(isDemonSlayer: true, characterName: "inosuke")
                    .rotationEffect(.degrees(-90));
                Spacer()
                ConnectionView(isDemonSlayer: true, characterName: "urokodaki")
                    .rotationEffect(.degrees(-90));
            }.rotationEffect(.degrees(90))
            
            HStack{
                ConnectionView(isDemonSlayer: true, characterName: "zenitsu").rotationEffect(.degrees(30));
                Spacer()
                ConnectionView(isDemonSlayer: true, characterName: "shinobu")
                    .rotationEffect(.degrees(30));
            }.rotationEffect(.degrees(-30))
            
            ConnectionView(isDemonSlayer: true, characterName: "tanjiro");
        }
        .frame(width: 300, height: 300)
        
    }
}
