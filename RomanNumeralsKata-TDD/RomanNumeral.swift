//
//  RomanNumeral.swift
//  RomanNumeralsKata-TDD
//
//  Created by Achraf TRABELSI on 11/09/2018.
//  Copyright © 2018 Achraf TRABELSI. All rights reserved.
//

import Foundation

class RomanNumeral {
    
    var romanKeys = [(1000,"M"), (900,"CM"),
                   (500,"D"), (400,"CD"),
                   (100,"C"), (90,"XC"),
                   (50,"L"), (40,"XL"),
                   (10,"X"), (9,"IX"),
                   (5,"V"), (4,"IV"),
                   (1,"I")]
    
    /// Convert from roman number to arabic number.
    ///
    /// - Parameter input: roman number.
    /// - Returns: arabic number.
    func convertToRoman(_ input: Int) -> String {
        if (input == 0) {
            return ""
        }
        
        for nbr in romanKeys {
            if input >= nbr.0 {
                return nbr.1 + convertToRoman(input - nbr.0)
            }
        }
        
        return ""
    }
    
    /// Convert from arabic number to roman number.
    ///
    /// - Parameter input: arabic number.
    /// - Returns: roman number.
    func convertToArabic(_ input: String) -> Int {
        if input.isEmpty {
            return 0
        }
        
        var number = input
        
        for nbr in romanKeys {
            if number.hasPrefix(nbr.1) {
                let first = number.startIndex
                number.removeSubrange(first ..< number.index(first, offsetBy: nbr.1.count))
                return nbr.0 + convertToArabic(number)
            }
        }
        
        return 0
    }
}
