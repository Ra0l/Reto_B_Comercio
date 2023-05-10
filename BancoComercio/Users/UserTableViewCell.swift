//
//  UserTableViewCell.swift
//  BancoComercio
//
//  Created by Raul Kevin Aliaga Shapiama on 5/9/23.
//

import Foundation
import UIKit

class UserTableViewCell: UITableViewCell {

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblUsername: UILabel!
    @IBOutlet weak var lblEmail: UILabel!
    @IBOutlet weak var lblAdress: UILabel!
    @IBOutlet weak var lblPhone: UILabel!
    
    fileprivate var objUser: AllUser! {
        didSet {
            self.updateData()
        }
    }
    
    func updateData() {
        self.lblName.text = self.objUser.name
        self.lblUsername.text = self.objUser.username
        self.lblEmail.text = self.objUser.email
        self.lblPhone.text = self.objUser.phone
        self.lblAdress.text = "\(self.objUser.address?.city) - \(self.objUser.address?.street), \(self.objUser.address?.suite)"
    }

}

//MARK: -- Builder
extension UserTableViewCell {
    
    class func buildInTableView(_ tableView: UITableView, indexPath: IndexPath, objUser: AllUser) -> UserTableViewCell {
        
        let cellIdentifier = "UserTableViewCell"
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? UserTableViewCell else {
            return UserTableViewCell()
        }
        
        cell.objUser = objUser
        return cell
    }
}
