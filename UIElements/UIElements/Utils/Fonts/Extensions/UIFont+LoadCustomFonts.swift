//
//  UIFont+LoadCustomFonts.swift
//  UIElements
//
//  Created by Carles Cañadas Torrents on 02/02/2020.
//  Copyright © 2020 karlesct. All rights reserved.
//

import Foundation
import UIKit

extension UIFont {
    
    private class MyDummyClass {}
    
    static func loadCustomFontWith(name: String) {
        let frameworkBundle = Bundle(for: MyDummyClass.self)
    
        if let pathForResourceString = frameworkBundle.path(forResource: name, ofType: "ttf"),
            let fontData = NSData(contentsOfFile: pathForResourceString),
            let dataProvider = CGDataProvider.init(data: fontData),
            let fontRef = CGFont.init(dataProvider) {
            
            var errorRef: Unmanaged<CFError>?
            
            if CTFontManagerRegisterGraphicsFont(fontRef, &errorRef) == false {
                print("Failed to register font - register graphics font failed - this font may have already been registered in the main bundle.")
            }
        }
        
    }
    
    public static func loadCustomFonts() {
        
        UIFont.loadCustomFontWith(name: "OpenSans-Bold")
        UIFont.loadCustomFontWith(name: "OpenSans-BoldItalic")
        UIFont.loadCustomFontWith(name: "OpenSans-ExtraBold")
        UIFont.loadCustomFontWith(name: "OpenSans-ExtraBoldItalic")
        UIFont.loadCustomFontWith(name: "OpenSans-Italic")
        UIFont.loadCustomFontWith(name: "OpenSans-Light")
        UIFont.loadCustomFontWith(name: "OpenSans-LightItalic")
        UIFont.loadCustomFontWith(name: "OpenSans-Regular")
        UIFont.loadCustomFontWith(name: "OpenSans-Semibold")
        UIFont.loadCustomFontWith(name: "OpenSans-SemiboldItalic")
    }
}
