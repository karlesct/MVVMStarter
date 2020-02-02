//
//  UIButton+BackgroundColorForState.swift
//  UIElements
//
//  Created by Carles Cañadas Torrents on 02/02/2020.
//  Copyright © 2020 karlesct. All rights reserved.
//

import Foundation
import UIKit

extension UIButton {
    
    func setBackgroundColor(_ color: UIColor, for state: UIControl.State) {
        self.setBackgroundImage(nil, for: state)
        self.setBackgroundImage(image(withColor: color), for: state)
    }
    
    private func image(withColor color: UIColor) -> UIImage? {
        
        let rect = self.bounds
        
        UIGraphicsBeginImageContext(rect.size)
        
        let context = UIGraphicsGetCurrentContext()
        
        let path = UIBezierPath(roundedRect: rect, cornerRadius: self.layer.cornerRadius)
        //path.move(to: CGPoint(x: 0, y: 0))
        context?.addPath(path.cgPath)
        
        context?.setFillColor(color.cgColor)
        context?.fillPath()
        context?.closePath()
        
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
    
}
