//
//  RomanNumeralsKata_TDDTests.swift
//  RomanNumeralsKata-TDDTests
//
//  Created by Achraf TRABELSI on 10/09/2018.
//  Copyright © 2018 Achraf TRABELSI. All rights reserved.
//

import XCTest
@testable import RomanNumeralsKata_TDD

class RomanNumeralsKata_TDDTests: XCTestCase {

    let romanNumeral = RomanNumeral()
    
    override func setUp() {
      
    }

    override func tearDown() {
      
    }
    
    func test_should_return_I_when_input_is_1() {
        XCTAssertEqual(romanNumeral.convertToRoman(1), "I")
    }
    
    func test_should_return_X_when_input_is_10() {
        XCTAssertEqual(romanNumeral.convertToRoman(10), "X")
    }
    
    func test_should_return_VII_when_input_is_7() {
        XCTAssertEqual(romanNumeral.convertToRoman(7), "VII")
    }
    
    func test_should_return_empty_string_when_input_is_0() {
        XCTAssertEqual(romanNumeral.convertToRoman(0), "")
    }
    
    func test_should_return_roman_number_when_innput_is_arabic_number() {
        XCTAssertEqual(romanNumeral.convertToRoman(3), "III")
        XCTAssertEqual(romanNumeral.convertToRoman(11), "XI")
        XCTAssertEqual(romanNumeral.convertToRoman(19), "XIX")
        XCTAssertEqual(romanNumeral.convertToRoman(10), "X")
        XCTAssertEqual(romanNumeral.convertToRoman(17), "XVII")
        XCTAssertEqual(romanNumeral.convertToRoman(22), "XXII")
        XCTAssertEqual(romanNumeral.convertToRoman(30), "XXX")
        XCTAssertEqual(romanNumeral.convertToRoman(59), "LIX")
        XCTAssertEqual(romanNumeral.convertToRoman(102), "CII")
        XCTAssertEqual(romanNumeral.convertToRoman(600), "DC")
        XCTAssertEqual(romanNumeral.convertToRoman(741), "DCCXLI")
        XCTAssertEqual(romanNumeral.convertToRoman(5000), "MMMMM")
    }
    
    func test_should_return_1_when_input_is_I() {
        XCTAssertEqual(romanNumeral.convertToArabic("XVII"), 17)
    }
    
    func test_should_return_10_when_input_is_X() {
        XCTAssertEqual(romanNumeral.convertToArabic("X"), 10)
    }
    
    func test_should_return_arabic_number_when_input_is_roman_number() {
        XCTAssertEqual(romanNumeral.convertToArabic("III"), 3)
        XCTAssertEqual(romanNumeral.convertToArabic("XI"), 11)
        XCTAssertEqual(romanNumeral.convertToArabic("X"), 10)
        XCTAssertEqual(romanNumeral.convertToArabic("XVII"), 17)
        XCTAssertEqual(romanNumeral.convertToArabic("XXII"), 22)
        XCTAssertEqual(romanNumeral.convertToArabic("XXX"), 30)
        XCTAssertEqual(romanNumeral.convertToArabic("CII"), 102)
        XCTAssertEqual(romanNumeral.convertToArabic("DC"), 600)
        XCTAssertEqual(romanNumeral.convertToArabic("MMMMM"), 5000)
        XCTAssertEqual(romanNumeral.convertToArabic("XIX"), 19)
        XCTAssertEqual(romanNumeral.convertToArabic("LIX"), 59)
        XCTAssertEqual(romanNumeral.convertToArabic("DCCXLI"), 741)
    }
}
