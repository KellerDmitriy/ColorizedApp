//
//  ColorValue.swift
//  ColorizedApp
//
//  Created by Келлер Дмитрий on 11.04.2023.
//

import Foundation


struct ColorRGBValue {
    let red: CGFloat
    let green: CGFloat
    let blue: CGFloat
    let alpha: CGFloat
    
    static func getWhiteColor() -> ColorRGBValue {
        ColorRGBValue(red: 1, green: 1, blue: 1, alpha: 1)
        
    }
    
}


