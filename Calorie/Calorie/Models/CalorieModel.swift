//
//  CalorieModel.swift
//  Calorie
//
//  Created by Juan Pablo Bustillo Guerrero on 14/06/21.
//

import Foundation
import SwiftUI

class CalorieModel : ObservableObject {
    @Published var gender : Gender = Gender.male
    @Published var age : Double = 30
    @Published var height : Double = 170
    @Published var weight : Double = 70
    @Published var resultBMR : Double = 0
    
    func calculateBMR(){
        switch gender {
        
        case Gender.male:
            resultBMR = (10 * weight) + (6.25 * height) - (5 * age) + 5
            
        case Gender.female:
            resultBMR = (10 * weight) + (6.25 * height) - (5 * age) - 161
        }
    }
}
