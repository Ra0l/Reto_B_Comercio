//
//  AMShape.swift
//  MarvelApp
//
//  Created by Raul Kevin Aliaga Shapiama on 4/25/23.
//

import Foundation
import UIKit

protocol AMShape {
    var shape_cornerRadius: CGFloat { get set }
}

extension AMShape where Self: UIView {
    
    func updateShapeAppereance() {
        self.layer.cornerRadius = self.shape_cornerRadius
    }
}
