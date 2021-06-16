//
//  ContentView.swift
//  VisionBoard
//
//  Created by Juan Pablo Bustillo Guerrero on 17/05/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing:10){
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10){
                GridItemView(imageName: "tesla");
                GridItemView(imageName: "house");
                GridItemView(imageName: "pool");
            }
            
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10){
                GridItemView(imageName: "apartment");
                GridItemView(imageName: "apple");
                GridItemView(imageName: "garage");
            }
            
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10){
                GridItemView(imageName: "library");
                GridItemView(imageName: "husky");
                GridItemView(imageName: "garden");
            }
        }
    }
}
