//
//  ScaleButtonStyle.swift
//  Waltz
//
//  Created by Juan Pablo Bustillo Guerrero on 15/06/21.
//

import Foundation
import SwiftUI

struct ScaleButtonStyle : ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.97 : 1)
    }
}
