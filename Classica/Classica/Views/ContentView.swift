//
//  ContentView.swift
//  Classica
//
//  Created by Juan Pablo Bustillo Guerrero on 15/06/21.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var model : ClassicaModel
    
    var body: some View {
        
        NavigationView{
            VStack{
                ScrollView (.horizontal, showsIndicators: false) {
                    HStack(spacing: 25) {
                        SongCard(title: "Waltz of the Flowers", composer: "Tchaikovsky", image: "childhood")
                        SongCard(title: "1812 Overture", composer: "Tchaikovsky", image: "youth")
                        SongCard(title: "Ride of the Valkyries", composer: "Wagner", image: "manhood")
                        SongCard(title: "9th Symphony (Finale)", composer: "Beethoven", image: "oldage")
                     }
                }.padding(.all, 30)
                
                HStack{
                    Button(action: { model.playMusic() }){
                        Image(systemName: "play.circle")
                            .font(.largeTitle)
                            .foregroundColor(Color(.systemGray3))
                    }
                    
                    Button(action: { model.pauseMusic() }){
                        Image(systemName: "pause.circle")
                            .font(.largeTitle)
                            .foregroundColor(Color(.systemGray3))
                    }
                    
                    Button(action: {model.stopMusic() }){
                        Image(systemName: "stop.circle")
                            .font(.largeTitle)
                            .foregroundColor(Color(.systemGray3))
                    }
                }
            }.navigationBarTitle(Text("Classica"))
        }
    }
}
