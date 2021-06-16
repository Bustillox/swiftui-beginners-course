//
//  ResultCard.swift
//  Index
//
//  Created by Juan Pablo Bustillo Guerrero on 14/06/21.
//

import SwiftUI

struct ResultCard : View {
    
    @EnvironmentObject var model : IndexModel
    
    var unitResults : String {
        switch model.unit {
        case .metric:
            return "Kg / m^2"
        case .imperial:
            return "Lbs / in"
        }
    }
        
    var categoryBMI : String {
        switch model.resultBMI {
            case ...16:
                return "Severe Thinness"
            case 16..<17:
                return "Moderate Thinness"
            case 17..<18.5:
                return "Mild Thinness"
            case 18.5..<25:
                return "Normal"
            case 25..<30:
                return "Overweight"
            case 30..<35:
                return "Obese Class I"
            case 35..<40:
                return "Obese Class II"
            case 40...:
                return "Obese Class III"
            default:
                return "Normal"
        }
    }
    
    var body: some View {
        ZStack{
            CardBackground()
            VStack{
                CardLabel(title: "Result", caption: "Your body mass index is: ")

                Text(String(format:"%0.1f", model.resultBMI))
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color(.systemGreen))
//
                Text(categoryBMI)
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(Color(.systemGray))
            }
        }.frame(width: 300, height: 500)
    }

}
