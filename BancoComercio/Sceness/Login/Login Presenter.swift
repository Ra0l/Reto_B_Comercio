//
//  Login Presenter.swift
//  BancoComercio
//
//  Created by Raul Kevin Aliaga Shapiama on 5/8/23.
//

import Foundation
import ProgressHUD

struct LoginPresenter {
    
    private unowned let controller: LoginViewController
    private let loginModel = LoginModel()
    
    init(controller: LoginViewController) {
        self.controller = controller
    }
    
    func doLoginWithEmail(_ email: String?, password: String?) {
        
        guard let email = email, email.count > 0 else {
            self.controller.showAutomaticAlertWithTitle("Error", message: "Ingrese un correo validos")
            return
        }
        
        guard let password = password, password.count > 0 else {
            self.controller.showAutomaticAlertWithTitle("Error", message: "Ingrese una contraseña válida.")
            return
        }
        
        ProgressHUD.show("Ingresando")
        
        self.loginModel.doLoginWithUser(email, password: password) { loginResponse in
            
            ProgressHUD.dismiss()
            self.controller.goToHome()
        } errorHandler: { error in
            ProgressHUD.dismiss()
            self.controller.showAutomaticAlertWithTitle("Error", message: error)
        }
        
        
    }
    
}
