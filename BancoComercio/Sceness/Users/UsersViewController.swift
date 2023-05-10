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
        self.tlbUsers.register(UINib(nibName: "UserTableViewCell", bundle: nil), forCellReuseIdentifier: "UserTableViewCell")
        self.presenter.didLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        self.presenter.prepare(for: segue, sender: sender)
    }
    
    @IBAction func btnLogout(_ sender: Any) {
        
    }
}


extension UsersViewController {
    
    
    
    func initAdapters() {
        self.listUserAdapter.initAdapterWidthTableView(self.tlbUsers)
    }
    
    
    func didSelectUser(_ objUser: AllUser) {
        self.performSegue(withIdentifier: "PostViewController", sender: objUser)
    }
    
    func reloadData(_ arrayData: [Any]) {
        self.listUserAdapter.arrayData = arrayData
        self.tlbUsers.reloadData()
    }
}
