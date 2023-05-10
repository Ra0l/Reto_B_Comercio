//
//  LoginModel.swift
//  BancoComercio
//
//  Created by Raul Kevin Aliaga Shapiama on 5/8/23.
//

import Foundation
import Alamofire

typealias LoginResponseHandler = (_ loginResponse: LoginResponse) -> Void

struct LoginModel {
    
    func doLoginWithUser(_ userName: String, password: String, completionHandler: @escaping LoginResponseHandler, errorHandler: @escaping ErrorHandler) {
        
        let user = "r@gmail.com"
        let pass = "1234"
        
        if user == userName && pass == password {
            let url = "http://demo0050677.mockable.io/auth"
            
            AF.request(url, method: .post).response { dataResponse in
                guard let loginResponse = dataResponse.data?.toDTO(LoginResponse.self) else {
                    errorHandler("Ocurrio un error insperado. Intentalo de nuevo.")
                    return
                }
                UserDefaults.standard.set(true, forKey: "session")
                completionHandler(loginResponse)
            }
        }
        
    }
}
