//
//  GridItemView.swift
//  VisionBoard
//
//  Created by Juan Pablo Bustillo Guerrero on 17/05/21.
//

import Foundation
import SwiftUI

struct GridItemView : View{
    
    let imageName : String;
    
    var body: some View{
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height:100)
            .cornerRadius(10);
    }
}
