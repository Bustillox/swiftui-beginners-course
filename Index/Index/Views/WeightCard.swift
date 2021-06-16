//
//  WeightCard.swift
//  Index
//
//  Created by Juan Pablo Bustillo Guerrero on 14/06/21.
//

import SwiftUI

struct WeightCard: View {
    
    @EnvironmentObject var model : IndexModel
    
    var weightUnit : String {
        switch model.unit {
        case .metric:
            return "Kg"
        case .imperial:
            return "Lbs"
        }
    }
    
    var body: some View {
        ZStack{
            CardBackground()
            VStack{
                CardLabel(title: "Weight", caption: "Enter you weight (\(weightUnit))")
                
                SliderValue(value: model.unit == .metric ? model.metricWeight : model.imperialWeight, hasDecimal: false)
                Slider(value: model.unit == .metric ? $model.metricWeight : $model.imperialWeight, in: 50...250 , step: 1.0)
                    .accentColor(Color(.systemGreen))
                    .frame(width:150)
            }
        }.frame(width: 300, height: 500)
    }
}
