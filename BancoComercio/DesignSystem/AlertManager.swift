//
//  AlertManager.swift
//  BancoComercio
//
//  Created by Raul Kevin Aliaga Shapiama on 5/10/23.
//

import Foundation
import UIKit

extension UIViewController {
    
    func showAutomaticAlertWithTitle(_ title: String, message: String) {
        
        let controller = UIAlertController(title: title, message: message, preferredStyle: .alert)
        self.present(controller, animated: true) {
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                controller.dismiss(animated: true, completion: nil)
            }
        }
    }
}
