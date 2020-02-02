//
//  UIESecondaryButton.swift
//  UIElements
//
//  Created by Carles Cañadas Torrents on 02/02/2020.
//  Copyright © 2020 karlesct. All rights reserved.
//

import Foundation
import UIKit

public class UIESecondaryButton: UIButton  {
    
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


extension UIESecondaryButton {
    
    // MARK: - Helpers
    
    func setupUIE() {
        
    
    }
    
}
