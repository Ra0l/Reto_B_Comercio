//
//  AMBorder.swift
//  MarvelApp
//
//  Created by Raul Kevin Aliaga Shapiama on 4/25/23.
//

import Foundation
import UIKit

protocol AMBorder {
    var border_color: UIColor { get set }
    var border_width: CGFloat { get set }
}

extension AMBorder where Self: UIView {
    
    func updateBorderAppereance() {
        self.layer.borderWidth = self.border_width
        self.layer.borderColor = self.border_color.cgColor
    }
}
