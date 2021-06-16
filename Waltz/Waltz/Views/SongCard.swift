//
//  SongCard.swift
//  Waltz
//
//  Created by Juan Pablo Bustillo Guerrero on 15/06/21.
//

import SwiftUI

struct SongCard: View {
    
    let title : String
    let composer : String
    let image : String
    
    @EnvironmentObject var model : WaltzModel
    
    var body: some View {
        
        Button(action: { model.loadAndPlay() }){
            ZStack{
                Image(image)
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                
                VStack{
                    HStack{
                        SongInfo(title: title, composer: composer)
                        Spacer()
                    }
                    Spacer()
                }
            }
            .frame(width: 300, height: 300)
            .clipShape(RoundedRectangle(cornerRadius: 20))
        }.buttonStyle(ScaleButtonStyle())
    }
}
