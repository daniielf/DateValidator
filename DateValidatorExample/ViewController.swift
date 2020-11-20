//
//  ViewController.swift
//  DateValidator
//
//  Created by daniielf on 11/18/2020.
//  Copyright (c) 2020 daniielf. All rights reserved.
//

import DateValidator
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
                
        let dateValidator = DateValidator()
        
        /// Validate the date 29/02/1600 - Returns True
        let dateValdationExample1 = dateValidator.validateDate(day: 29, month: 2, year: 1600)
        print ("Is 29/02/1600 valid:", dateValdationExample1)
        
        /// Validate the date 29/02/1900 - Returns False
        let dateValdationExample2 = dateValidator.validateDate(day: 29, month: 2, year: 1900)
        print ("Is 29/02/1900 valid:", dateValdationExample2)
        
        /// Validate the date 31/02/1900 - Returns False
        let dateValdationExample3 = dateValidator.validateDate(day: 31, month: 2, year: 1900)
        print ("Is 31/02/1900 valid:", dateValdationExample3)
        
        /// Validate the date 31/01/2000 - Returns True
        let dateValdationExample4 = dateValidator.validateDate(day: 31, month: 1, year: 2000)
        print ("Is 31/01/2000 valid:", dateValdationExample4)
        
        /// Validate the date 29/02/2012 - Returns True
        let dateValdationExample5 = dateValidator.validateDate(day: 29, month: 2, year: 2012)
        print ("Is 29/02/2012 valid:", dateValdationExample5)
        
        /// Validate the date 32/05/2000 - Returns False
        let dateValdationExample6 = dateValidator.validateDate(day: 32, month: 5, year: 2000)
        print ("Is 32/05/2000 valid:", dateValdationExample6)
        
        /// Validate the date 15/14/2000 - Returns False
        let dateValdationExample7 = dateValidator.validateDate(day: 15, month: 14, year: 2000)
        print ("Is 15/14/2000 valid:", dateValdationExample7)
    }
}
