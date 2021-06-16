//
//  SongCard.swift
//  Classica
//
//  Created by Juan Pablo Bustillo Guerrero on 15/06/21.
//

import SwiftUI

struct SongCard: View {
    
    let title : String
    let composer : String
    let image : String
    
    @EnvironmentObject var model : ClassicaModel
    
    var body: some View {
        
        Button(action: { model.loadAndPlay(song: title) }){
            ZStack{
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                
                VStack{
                    HStack{
                        SongInfo(title: title, composer: composer)
                        Spacer()
                    }
                    Spacer()
                }
            }.frame(width: 300, height: 300)
            .clipShape(RoundedRectangle(cornerRadius: 20))
        }.buttonStyle(ScaleButtonStyle())
    }
}
