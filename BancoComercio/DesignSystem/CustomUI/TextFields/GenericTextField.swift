//
//  GenericTextField.swift
//  MarvelApp
//
//  Created by Raul Kevin Aliaga Shapiama on 4/25/23.
//

import Foundation
import UIKit

@IBDesignable class GenericTextField: AMTextField {
    
    override func setNeedsLayout() {
        super.setNeedsLayout()
        self.updateAppereance()
    }
    
    override func drawText(in rect: CGRect) {
        super.drawText(in: rect)
        self.font = .systemFont(ofSize: 16, weight: .regular)
    }
    
    func updateAppereance() {
        self.textColor = .darkGray
    }
}
