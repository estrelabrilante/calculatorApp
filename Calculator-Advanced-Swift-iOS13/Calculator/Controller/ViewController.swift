//
//  ViewController.swift
//  Calculator
//
//  Created by Angela Yu on 10/09/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var displayLabel: UILabel!
    private var displayValue : Double{
        //read-only
        get{
            guard let number = Double(displayLabel.text!) else{fatalError("cannot convert text into double")
            }
            return number
        }
        //write-only
        set{
            displayLabel.text = String(newValue)
        }
    }
   private var isFinishedTypingNumber : Bool = true
    
   private var calculator = CalculatorLogic()
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        
        //What should happen when a non-number button is pressed
        isFinishedTypingNumber = true
        calculator.setNumber(displayValue)
        
  if let userValue = sender.currentTitle
        {
     // let calcLogic = CalculatorLogic(number: displayValue)
      guard let result = calculator.calcFuncMethod(valueGet: userValue)
      else{
          fatalError("The result of the calculation is nil")
      }
      displayValue = result
  }
    }

    
    @IBAction func numButtonPressed(_ sender: UIButton) {
    //What should happen when a number is entered into the keypad
if let numValue = sender.currentTitle{
            if isFinishedTypingNumber{
                displayLabel.text = numValue
                isFinishedTypingNumber = false
            }else{
                if numValue == "."{
                    
    let isInt = floor(displayValue) == displayValue
            if !isInt{
                        return
                    }
                    }
    displayLabel.text = displayLabel.text! + numValue
            }
        }
    
    }

}

