//
//  LoginViewController.swift
//  BancoComercio
//
//  Created by Raul Kevin Aliaga Shapiama on 5/8/23.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var txtEmail: EmailTextField!
    @IBOutlet weak var txtPassword: PasswordTextField!
    @IBOutlet weak var swtRememeberEmail: UISwitch!
    
    lazy private var presenter: LoginPresenter = {
       LoginPresenter(controller: self)
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

}

extension LoginViewController {
    @IBAction func btnLogin(_ sender: Any) {
        self.presenter.doLoginWithEmail(self.txtEmail.text, password: self.txtPassword.text)
    }
    
    func goToHome() {
        let storyboard = UIStoryboard(name: "Users", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "MainSB")
        controller.modalPresentationStyle = .fullScreen
        self.present(controller, animated: true)
    }
}
