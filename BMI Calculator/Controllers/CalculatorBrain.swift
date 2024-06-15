//
//  calculatorBrain.swift
//  BMI Calculator
//
//  Created by Ob yda on 5/28/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    var bmiValue: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmi = (weight) / pow(height, 2)
        
        if bmi < 18.5 {
            bmiValue = BMI(value: bmi, advice: "Eat more pies!", color: UIColor.cyan)
        } else if bmi < 24.9 {
            bmiValue = BMI(value: bmi, advice: "Fit as a fiddle!", color: UIColor.green)
        } else{
            bmiValue = BMI(value: bmi, advice: "Eat less pies", color: UIColor.red)
        }
        
    }
    
    func getBMIValue() -> String {
        return (String(format: "%.1f", bmiValue?.value ?? 0.0))
    }
    
    func getAdvice() -> String {
        return bmiValue?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmiValue?.color ?? UIColor.white
    }

}
