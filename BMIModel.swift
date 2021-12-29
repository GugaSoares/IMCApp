//
//  BMIModel.swift
//  Exercicio 4 App
//
//  Created by Gustavo Soares dos Santos on 29/12/21.
//

import Foundation

class BMIModel {
    var height: Double
    var weight: Double
    
    init (height: Double, weight: Double){
        self.weight = weight
        self.height = height
    }
    
    func bmi () -> Double {
        return weight / (height * height)
    }
}
