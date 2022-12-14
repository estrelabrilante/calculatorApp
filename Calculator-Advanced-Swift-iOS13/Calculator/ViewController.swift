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
    
   private var isFinishedTypingNumber : Bool = true
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        
        //What should happen when a non-number button is pressed
        isFinishedTypingNumber = true
        guard let number = Double(displayLabel.text!) else{fatalError("cannot convert text into double")
            
        }
        if let calcMethod = sender.currentTitle{
            if calcMethod == "+/-"{
                displayLabel.text = String(number * -1)
            }
            else if calcMethod == "AC"{
                displayLabel.text = String(number * 0)
            }
            else if calcMethod == "%"{
                displayLabel.text = String(number/100)
            }
        }
    
    }

    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        
        //What should happen when a number is entered into the keypad
        
        if let numValue = sender.currentTitle{
            if isFinishedTypingNumber{
                displayLabel.text = numValue
                isFinishedTypingNumber = false
            }
            else{
                displayLabel.text = displayLabel.text! + numValue
            }
        }
    
    }

}

