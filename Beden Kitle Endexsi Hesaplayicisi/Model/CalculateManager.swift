//
//  CalculateManager.swift
//  Beden Kitle Endexsi Hesaplayicisi
//
//  Created by Aytaç Bulanık on 20.09.2024.
//

import Foundation

struct CalculateManager {
    var bmi : BMI?
    
    mutating func calculateBMI(height: Float, weight: Float)  {
        let bmiValue = weight / pow(height, 2)
        
    }
    
    func getBMIValue() -> String{
        if let safeBmi = bmi?.value {
            return String(format: "%.1f", safeBmi)
        } else {
            return "0.0"
        }
        
    }
}
