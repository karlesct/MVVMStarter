//
//  UIEButton.swift
//  UIElements
//
//  Created by Carles Cañadas Torrents on 02/02/2020.
//  Copyright © 2020 karlesct. All rights reserved.
//

import Foundation
import UIKit

public class UIEPrimaryButton: UIButton  {
    
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


extension UIEPrimaryButton {
    
    // MARK: - Helpers
    
    func setupUIE() {
        
        self.setBackgroundColor(UIEColors.Primary.blueOne, for: .highlighted)
            
        self.setBackgroundColor(UIEColors.Primary.blueOneSeventyFiveOfInk, for: .normal)
            
        self.setBackgroundColor(UIEColors.Primary.white, for: .disabled)
        titleLabel?.font = UIEFonts.bold.with(size: 20)
        
    }
    
}
