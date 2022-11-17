//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by user215496 on 11/2/22.
//  Copyright © 2022 London App Brewery. All rights reserved.
//

import Foundation
struct CalculatorLogic{
    var number : Double?
    
    private var intermediateCalculation : (firstNumber: Double, Operation: String)?
    // init(number: Double) {
    //    self.number = number
    // }
    mutating func setNumber(_ number:Double){
        self.number = number
    }
    mutating func calcFuncMethod(valueGet: String) -> Double?{
        if let n = number{
            if valueGet == "+/-"{
                return n * -1
            }
            else if valueGet == "AC"{
                return 0.0
            }
            else if valueGet == "%"{
                return n * 0.01
            }
            
            else if valueGet == "="{
                return performTwoNumCalculation(secondNumber: n)
            }
            else {
                
            }
        }
        return nil
    }
    
    private func performTwoNumCalculation(secondNumber:Double) -> Double?{
        
        if let n1 = intermediateCalculation?.firstNumber,
           let function =  intermediateCalculation?.Operation{
            switch function{
            case "+":
                return n1 + secondNumber
                
            case "-":
                return n1 - secondNumber
            case "×":
                return n1 * secondNumber
            case "÷":
                return n1 / secondNumber
            default:
                fatalError("The operation passed in does not match any of the cases")
            }
        }
        
     return nil
        
        
        
    }
    
}
