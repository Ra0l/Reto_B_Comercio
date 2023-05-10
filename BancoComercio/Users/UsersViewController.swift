//
//  UsersViewController.swift
//  BancoComercio
//
//  Created by Raul Kevin Aliaga Shapiama on 5/9/23.
//

import UIKit

class UsersViewController: UIViewController, ListUsersAdapterViewController {
    
    

    @IBOutlet weak var tlbUsers: UITableView!
    
    lazy private var listUserAdapter : UserAdapter = {
        UserAdapter(controller: self)
    }()
    
    lazy private var presenter : UserPresenter = {
       UserPresenter(controller: self)
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.presenter.didLoad()
    }
    
}


extension UsersViewController {
    
    func initAdapters() {
        self.listUserAdapter.initAdapterWidthTableView(self.tlbUsers)
    }
    
    
    func didSelectUser(_ objUser: AllUser) {
        
    }
    
    func reloadData(_ arrayData: [Any]) {
        self.listUserAdapter.arrayData = arrayData
        self.tlbUsers.reloadData()
    }
}
