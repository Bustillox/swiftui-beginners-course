//
//  UnitCard.swift
//  Index
//
//  Created by Juan Pablo Bustillo Guerrero on 14/06/21.
//

import SwiftUI

struct UnitCard: View {
    
    @EnvironmentObject var model : IndexModel
    
    var body: some View {
        ZStack{
            CardBackground()
            VStack{
                CardLabel(title: "Unit", caption: "Select unit type")
                Picker("Unit Type", selection: $model.unit){
                    Text("Metric").tag(UnitType.metric)
                    Text("Imperial").tag(UnitType.imperial)
                }
                .pickerStyle(SegmentedPickerStyle())
                .frame(width: 150)
            }
        }.frame(width: 300, height: 500)
    }
}
