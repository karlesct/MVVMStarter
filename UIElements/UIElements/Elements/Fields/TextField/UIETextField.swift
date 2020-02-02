//
//  UIETextField.swift
//  UIElements
//
//  Created by Carles Cañadas Torrents on 01/02/2020.
//  Copyright © 2020 karlesct. All rights reserved.
//

import Foundation
import UIKit

public class UIETextField: UITextField, UIEBaseField  {
    
    // MARK: - Fields
    
    // MARK: - IBInspectable
    
    // MARK: - Properties
    
    // MARK: - Constructor
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupUIE()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        setupUIE()
    }
    
    override public func awakeFromNib() {
        super.awakeFromNib()
        
        setupUIE()
    }
    
}


extension UIETextField {
    
    // MARK: - Helpers
    
    func setupUIE() {
        
        //self.textColor = UIColor.Palette.ComplementaryColors.blueDefault
    }
    
}

