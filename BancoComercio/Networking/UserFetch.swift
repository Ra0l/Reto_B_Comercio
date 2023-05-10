//
//  UserFetch.swift
//  BancoComercio
//
//  Created by Raul Kevin Aliaga Shapiama on 5/9/23.
//

typealias ErrorHandler = (_ error: String) -> Void
typealias UsersResponseHandler = (_ objectsUsers: [AllUser]) -> Void
typealias PostsResponseHandler = (_ objectsPosts: AllPost?) -> Void

import Foundation
import Alamofire

struct UserFetch {
    
    
    func listAllWithAlamofire(completionHandler : @escaping UsersResponseHandler) {
        
        let url = "https://jsonplaceholder.typicode.com/users"
        
        AF.request(url, method: .get).response { dataResponse in
            
            dataResponse.data?.printLog()
            
            guard let arrayUsers = dataResponse.data?.toDTO([AllUser].self) else {
                return
            }
            completionHandler(arrayUsers)
        }
    }
    
    func getPostWithAlamofire(_ idUser: Int, completionHandler: @escaping PostsResponseHandler){
    
        let url = "https://jsonplaceholder.typicode.com/users/\(idUser)/posts"
        
        AF.request(url, method: .get).response { response in
            response.data?.printLog()
            guard let objPost = response.data?.toDTO(AllPost.self) else {
                completionHandler(nil)
                //Una logica de errores
                return
            }
            completionHandler(objPost)
            print(objPost)
        }
    }
}
