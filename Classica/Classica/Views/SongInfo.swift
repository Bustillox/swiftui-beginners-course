//
//  SongInfo.swift
//  Classica
//
//  Created by Juan Pablo Bustillo Guerrero on 15/06/21.
//

import SwiftUI

struct SongInfo: View {
    
    let title : String
    let composer : String
    
    var body: some View {
        VStack{
            HStack{
                Text(title)
                    .font(.headline)
                    .foregroundColor(.white)
                Spacer()
            }
            
            HStack{
                Text(composer)
                    .font(.caption)
                    .foregroundColor(.white)
                Spacer()
            }
        }.shadow(radius: 1).padding(.all, 20)
    }
}
