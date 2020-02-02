//
//  UIEFonts.swift
//  UIElements
//
//  Created by Carles Cañadas Torrents on 02/02/2020.
//  Copyright © 2020 karlesct. All rights reserved.
//

import Foundation
import UIKit

public final class UIEFonts {
    
    struct regular {
        
        static func with(size: CGFloat ) -> UIFont? {
            return UIFont(name: "OpenSans", size: size)
        }
        
    }
    
    struct semibold {
        
        static func with(size: CGFloat ) -> UIFont? {
            return UIFont(name: "OpenSans-Semibold", size: size)
        }
        
    }
    
    struct bold {
        
        static func with(size: CGFloat ) -> UIFont? {
            return UIFont(name: "OpenSans-Bold", size: size)
        }
    }
    
}
