//
//  CalculateManager.swift
//  Beden Kitle Endexsi Hesaplayicisi
//
//  Created by Aytaç Bulanık on 20.09.2024.
//

import UIKit

struct CalculateManager {
    var bmi : BMI?
    
    mutating func calculateBMI(height: Float, weight: Float)  {
        let bmiValue = weight / pow(height, 2)
        switch bmiValue {
        case 0 ..< 18.5:
            bmi = BMI(value: bmiValue, advice: "Birşeyler yemelisin", color: .blue)
        case 18.5 ..< 24.9:
            bmi = BMI(value: bmiValue, advice: "Şu an fitsin bunu kaybetme", color: .green)
        case 24.9 ..< 100 :
            bmi = BMI(value: bmiValue, advice: "Acil olarak rejime başlamalısın", color: .red)
        default :
            bmi = BMI(value: 0.0, advice: "Bilinmiyor", color: .black)
        }
    }
    
    func getBMIValue() -> String{
        if let safeBmi = bmi?.value {
            return String(format: "%.1f", safeBmi)
        } else {
            return "0.0"
        }
    }
    
    func getBMIAdvice() -> String {
        return bmi?.advice ?? "Bilinmiyor"
    }
    
    func getBMIColor() -> UIColor {
        return bmi?.color ?? UIColor.black
    }
    
    
}
