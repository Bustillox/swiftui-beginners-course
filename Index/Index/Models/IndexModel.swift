//
//  IndexModel.swift
//  Index
//
//  Created by Juan Pablo Bustillo Guerrero on 15/06/21.
//

import Foundation
import SwiftUI

class IndexModel : ObservableObject {
    @Published var unit : UnitType = .metric
    
    @Published var metricHeight : Double = 190
    @Published var imperialHeightFT : Double = 6
    @Published var imperialHeightIN : Double = 0.23
    
    @Published var metricWeight : Double = 107
    @Published var imperialWeight : Double = 230

    @Published var resultBMI : Double = 0
    
    func calculateBMI(){
        if unit == .metric {
            resultBMI =  metricWeight / pow((metricHeight / 100), 2)
        } else {
            resultBMI = 703 * imperialWeight / pow(((imperialHeightFT * 12) + imperialHeightIN), 2)
        }
    }
}
