//
//  CardBackground.swift
//  Index
//
//  Created by Juan Pablo Bustillo Guerrero on 14/06/21.
//

import SwiftUI

struct CardBackground: View {
    var body: some View {
        Color(.white)
            .cornerRadius(20)
            .shadow(color: Color(.systemGray5), radius: 5, x: 2, y: 2)
    }
}
