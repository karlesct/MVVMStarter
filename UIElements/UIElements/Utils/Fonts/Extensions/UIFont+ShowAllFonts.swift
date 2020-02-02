//
//  UIFont+ShowAllFonts.swift
//  UIElements
//
//  Created by Carles Cañadas Torrents on 02/02/2020.
//  Copyright © 2020 karlesct. All rights reserved.
//

import Foundation
import UIKit

extension UIFont {
    
    /*
         Family: Open Sans Font names: ["OpenSansLight-Italic",
                                        "OpenSans-Bold",
                                        "OpenSans-SemiboldItalic",
                                        "OpenSans-ExtraboldItalic",
                                        "OpenSans-BoldItalic",
                                        "OpenSans-Light",
                                        "OpenSans-Semibold",
                                        "OpenSans",
                                        "OpenSans-Italic",
                                        "OpenSans-Extrabold"]
     */
    
    public static func showAllFonts() {
        for family in UIFont.familyNames.sorted() {
            let names = UIFont.fontNames(forFamilyName: family)
            print("Family: \(family) Font names: \(names)")
        }
    }
    
}
