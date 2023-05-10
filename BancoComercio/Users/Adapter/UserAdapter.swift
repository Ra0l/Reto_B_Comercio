//
//  UserAdapter.swift
//  BancoComercio
//
//  Created by Raul Kevin Aliaga Shapiama on 5/9/23.
//

import Foundation
import UIKit

protocol ListUsersAdapterViewController: NSObjectProtocol {
    func didSelectUser(_ objUser: AllUser)
}

class UserAdapter: NSObject {
    
    private unowned let controller : ListUsersAdapterViewController
    
    var arrayData = [Any]()
    
    init(controller: ListUsersAdapterViewController) {
        self.controller = controller
    }
    
    func initAdapterWidthTableView(_ tablleView: UITableView) {
        tablleView.delegate = self
        tablleView.dataSource = self
    }
}

extension UserAdapter: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.arrayData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let objUser = self.arrayData[indexPath.row] as? AllUser {
            return UserTableViewCell.buildInTableView(tableView, indexPath: indexPath, objUser: objUser)
        } else {
            return UITableViewCell()
        }
    }
    
    
}

extension UserAdapter: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let objUser = self.arrayData[indexPath.row] as? AllUser {
            self.controller.didSelectUser(objUser)
        }
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if self.arrayData[indexPath.row] is AllUser {
            return UITableView.automaticDimension
        } else if self.arrayData[indexPath.row] is String {
            return tableView.frame.height
        } else {
            return 0
        }
    }
}
