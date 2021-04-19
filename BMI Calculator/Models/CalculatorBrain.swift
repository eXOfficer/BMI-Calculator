//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Justdream on 18/04/2021.
//  Copyright © 2021 Justdreams. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = ((weight) / (height * height))
        
        if bmiValue > 0 && bmiValue <= 15 {
            bmi = BMI(value: bmiValue, advice: "Severe UnderWeight", color: #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1))
            
        }
        else if bmiValue > 15.00 && bmiValue <= 18.5 {
            bmi = BMI(value: bmiValue, advice: "UnderWeight, Eat some more", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        }
        else if bmiValue > 18.5 && bmiValue <= 25 {
            bmi = BMI(value: bmiValue, advice: "Super Healthy, keep on", color: #colorLiteral(red: 0.5237121233, green: 0.8601845855, blue: 0.291375752, alpha: 1))
        }
        else if bmiValue > 25 {
            bmi = BMI(value: bmiValue, advice: "OverWeight", color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        }
        //bmi = BMI(value: bmiValue, advice: <#T##String#>, color: <#T##UIColor#>)
        //return bmi?.value ?? 0.0
    }
    
    func getBmiValue ()-> String {
        return String(format: "%.2f", bmi?.value ?? 0.0 )
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "No Advice"
    }
    func getColor () -> UIColor {
        return bmi?.color ?? UIColor.white
    }
}
