//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Favour Olukayode on 28/12/2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) -> Float {
        let bmiValue = weight / pow(height, 2)
        var advice = ""
        var color = UIColor.blue
        
        if bmiValue < 18.5 {
            print("Underweight")
            
            advice = "Eat more pies"
            color = UIColor.blue
        } else if bmiValue < 29.5 {
            print("Healthy!")
            
            advice = "Fit as a fiddle!"
            color = UIColor.green
        } else {
            print("Overweight")
            
            advice = "Eat less pies"
            color = UIColor.green
        }
        
        bmi = BMI(value: bmiValue, advice: advice, color: color)
        return bmi?.value ?? 0.0
    }
    
    func getBMI() -> Float {
        return bmi?.value ?? 0.0
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "🌚🌚"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.blue
    }
    
    func getFormattedBMI() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
}
