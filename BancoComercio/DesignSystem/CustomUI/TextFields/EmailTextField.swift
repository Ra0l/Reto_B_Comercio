//
//  EmailTextField.swift
//  MarvelApp
//
//  Created by Raul Kevin Aliaga Shapiama on 4/25/23.
//

import Foundation
import UIKit

@IBDesignable class EmailTextField: GenericTextField {
    
    override func updateAppereance() {
        super.updateAppereance()
        self.keyboardType = .emailAddress
        self.placeholder = "Email"
    }
}
