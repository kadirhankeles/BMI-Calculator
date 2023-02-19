//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Kadirhan Keles on 17.02.2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain{
    var bmi: BMI?
    
    
    mutating func calculateBMI(_ height: Float,_ weight: Float){
        let bmiValue =  weight / pow(height, 2)
        
        if ( bmiValue < 18.5 ){
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: UIColor(red: 0.30, green: 0.59, blue: 1.00, alpha: 1.00))
        }else if ( bmiValue >= 18.5 && bmiValue <= 24.9) {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: UIColor(red: 0.21, green: 0.68, blue: 0.49, alpha: 1.00))
        }else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: UIColor(red: 0.92, green: 0.33, blue: 0.33, alpha: 1.00))
        }
     
    }
    
    func getBMIValue() -> String{
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
}
