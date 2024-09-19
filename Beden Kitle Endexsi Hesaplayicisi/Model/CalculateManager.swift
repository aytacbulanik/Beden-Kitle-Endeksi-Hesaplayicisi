//
//  CalculateManager.swift
//  Beden Kitle Endexsi Hesaplayicisi
//
//  Created by Aytaç Bulanık on 20.09.2024.
//

import Foundation

struct CalculateManager {
    var bmi : Float = 0.0
    
    mutating func calculateBMI(height: Float, weight: Float)  {
        bmi = weight / pow(height, 2)
    }
    
    func getBMIValue() -> String{
        String(format: "%.1f", bmi)
    }
}
