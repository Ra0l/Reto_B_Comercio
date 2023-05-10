//
//  UserPresenter.swift
//  BancoComercio
//
//  Created by Raul Kevin Aliaga Shapiama on 5/9/23.
//

import Foundation
import ProgressHUD

struct UserPresenter {
    
    private weak var controller : UsersViewController?
    private let userFetch = UserFetch()
    
    init(controller: UsersViewController) {
        self.controller = controller
    }
    
    func listAll() {
        ProgressHUD.showProgress(1.0)
        self.userFetch.listAllWithAlamofire { objectsUsers in
            let result: [Any] = objectsUsers
            self.controller?.reloadData(result)
            ProgressHUD.dismiss()
        }
    }
    
    func didLoad() {
        self.controller?.initAdapters()
        self.listAll()
    }
}



