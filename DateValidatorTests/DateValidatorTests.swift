//
//  DateValidatorTests.swift
//  DateValidatorTests
//
//  Created by Daniel Gonçalves on 18/11/20.
//  Copyright © 2020 Daniel Freitas. All rights reserved.
//

import XCTest
@testable import DateValidator

class DateValidatorTests: XCTestCase {

    var dateValidator: DateValidator!
    
    override func setUp() {
        dateValidator = DateValidator()
    }
    
    func testValidator() {
        
        /// Validate the date 29/02/1600 - Returns True
        let dateValdationExample1 = dateValidator.validateDate(day: 29, month: 2, year: 1600)
        XCTAssertTrue(dateValdationExample1)
        
        /// Validate the date 29/02/1900 - Returns False
        let dateValdationExample2 = dateValidator.validateDate(day: 29, month: 2, year: 1900)
        XCTAssertFalse(dateValdationExample2)
        
        /// Validate the date 31/02/1900 - Returns False
        let dateValdationExample3 = dateValidator.validateDate(day: 31, month: 2, year: 1900)
        XCTAssertFalse(dateValdationExample3)

        /// Validate the date 31/01/2000 - Returns True
        let dateValdationExample4 = dateValidator.validateDate(day: 31, month: 1, year: 2000)
        XCTAssertTrue(dateValdationExample4)
        
        /// Validate the date 29/02/2012 - Returns True
        let dateValdationExample5 = dateValidator.validateDate(day: 29, month: 2, year: 2012)
        XCTAssertTrue(dateValdationExample5)
        
        /// Validate the date 32/05/2000 - Returns False
        let dateValdationExample6 = dateValidator.validateDate(day: 32, month: 5, year: 2000)
        XCTAssertFalse(dateValdationExample6)

        /// Validate the date 15/14/2000 - Returns False
        let dateValdationExample7 = dateValidator.validateDate(day: 15, month: 14, year: 2000)
        XCTAssertFalse(dateValdationExample7)
    }

}
