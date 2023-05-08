//
//  UserTextField.swift
//  MarvelApp
//
//  Created by Raul Kevin Aliaga Shapiama on 4/25/23.
//

import Foundation
import UIKit

@IBDesignable class UserTextField: GenericTextField {
    
    override func updateAppereance() {
        super.updateAppereance()
        self.keyboardType = .default
        self.placeholder = "Username"
    }
}
