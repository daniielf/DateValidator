//
//  DateValidator.swift
//
//  Created by Daniel Freitas on 18/11/20.
//  Copyright © 2020 CocoaPods. All rights reserved.
//
import Foundation

public final class DateValidator {
        
    private struct Constants {
        static let minDate = 1
        static let maxMonth = 12
        static let shortMonths = [4, 6, 9, 11]
        static let longMonths = [1, 3, 5, 7, 8, 10, 12]
    }
    
    public func validateDate(day: Int, month: Int, year: Int) -> Bool {
        guard   day >= Constants.minDate,
                month >= Constants.minDate,
                month <= Constants.maxMonth else {
                return false
        }
        var daysOfMonth: Int = .zero
        
        if Constants.shortMonths.contains(month) {
            daysOfMonth = 30
        } else if Constants.longMonths.contains(month) {
            daysOfMonth = 31
        } else {
            daysOfMonth = getFebruaryDay(at: year)
        }
        
        return day <= daysOfMonth
    }
    
    private func getFebruaryDay(at year: Int) -> Int {
        if (year % 400) == .zero {
            return 29
        }
        if (year % 100) == .zero {
            return 28
        }
        if (year % 4) == .zero {
            return 29
        } else {
            return 28
        }
    }
}
