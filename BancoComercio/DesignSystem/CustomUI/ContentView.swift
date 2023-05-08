//
//  ContentView.swift
//  MarvelApp
//
//  Created by Raul Kevin Aliaga Shapiama on 4/25/23.
//

import Foundation
import UIKit

@IBDesignable class ContentView: AMView {
    
    override func setNeedsLayout() {
        super.setNeedsLayout()
        self.updateAppereance()
    }
        
    private func updateAppereance() {
        
        self.shape_cornerRadius = 15
        self.border_width = 2
        self.border_color = .red
        self.backgroundColor = UIColor(displayP3Red: 0, green: 0, blue: 0, alpha: 0.5)
    }
}
