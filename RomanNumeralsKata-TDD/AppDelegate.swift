//
//  AppDelegate.swift
//  RomanNumeralsKata-TDD
//
//  Created by Achraf TRABELSI on 10/09/2018.
//  Copyright © 2018 Achraf TRABELSI. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let romanNumeral = RomanNumeral()
        
        print("**************")
        print("Convert 22 => \(romanNumeral.convertToRoman(22))")
        print("Convert XXII => \(romanNumeral.convertToArabic("XXII"))")
        print("Convert XIX => \(romanNumeral.convertToArabic("XICX"))")
        print("**************")
        
        return true
    }
}

