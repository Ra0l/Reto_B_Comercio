//
//  PasswordTextField.swift
//  MarvelApp
//
//  Created by Raul Kevin Aliaga Shapiama on 4/25/23.
//

import Foundation
import UIKit

@IBDesignable class PasswordTextField: GenericTextField {
    
    var showPassword: Bool = false
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        self.isSecureTextEntry = true
        self.icon_image = UIImage(named: "eye")
        self.icon_color = .black
        self.icon_isActive = true
        self.placeholder = "Password"
    }
    
    override func updateAppereance() {
        super.updateAppereance()
    }
    
    override func clickBtnIcon(_ sender: UIButton) {
        super.clickBtnIcon(sender)
        
        self.showPassword = !self.showPassword
        self.isSecureTextEntry = !self.showPassword
        self.icon_image = self.showPassword ? UIImage(named: "eye.slash") : UIImage(named: "eye")
    }
}
