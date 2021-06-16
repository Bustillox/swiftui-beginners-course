//
//  HeightCard.swift
//  Index
//
//  Created by Juan Pablo Bustillo Guerrero on 14/06/21.
//

import SwiftUI

struct HeightCard: View {
    
    @EnvironmentObject var model : IndexModel

    var heightUnit : String {
        switch model.unit {
        case .metric:
            return "Cm"
        case .imperial:
            return "Ft & In"
        }
    }
    
    var body: some View {
        ZStack{
            CardBackground()
            VStack{
                CardLabel(title: "Height", caption: "Enter your height (\(heightUnit))")
                
                if model.unit == UnitType.metric{
                    SliderValue(value: model.metricHeight, hasDecimal: false)
                    Slider(value: $model.metricHeight, in: 1...250, step: 1.0)
                        .accentColor(Color(.systemGreen))
                        .frame(width: 150)
                } else {
                    HStack{
                        SliderValue(value: model.imperialHeightFT, hasDecimal: false)
                        SliderValue(value: model.imperialHeightIN, hasDecimal: true)
                    }
                    
                    HStack{
                        Slider(value: $model.imperialHeightFT, in: 1...10, step: 1.0)
                            .accentColor(Color(.systemGreen))
                            .frame(width: 100)
                                                
                        Slider(value: $model.imperialHeightIN, in: 0...10, step: 0.5)
                            .accentColor(Color(.systemGreen))
                            .frame(width: 100)

                    }
                }
            }
        }.frame(width: 300, height: 500)
    }
}
