//
//  CalculatorService.swift
//  BMI Calculator
//
//  Created by Marcos Almeida on 2024-09-10.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorService{
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiTo1Decimal = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1Decimal
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? ""
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .gray
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more", color: .blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "All good", color: .green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Exercise more", color: .red)
        }
    }
}
