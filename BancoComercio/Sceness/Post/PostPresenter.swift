//
//  PostPresenter.swift
//  BancoComercio
//
//  Created by Raul Kevin Aliaga Shapiama on 5/10/23.
//

import Foundation
import ProgressHUD

struct PostPresenter {
    
    private unowned let controller : PostViewController
    private let postFetch = UserFetch()
    
    init(controller: PostViewController) {
        self.controller = controller
    }
    
    func didLoad() {
        self.getPosts()
    }
    
    func getPosts() {
        
        ProgressHUD.showProgress(1.0)
        self.postFetch.getPostWithAlamofire(self.controller.idUser) { objectsPosts in
            
            guard let objectsPosts = objectsPosts else {
                print("El listado de post por usuario no se encuentra!")
                return
            }
            self.controller.arrayPost = objectsPosts
            ProgressHUD.dismiss()
        }
    }
}
