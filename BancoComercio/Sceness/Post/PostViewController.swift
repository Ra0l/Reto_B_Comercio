//
//  PostViewController.swift
//  BancoComercio
//
//  Created by Raul Kevin Aliaga Shapiama on 5/10/23.
//

import UIKit

class PostViewController: UIViewController {

    
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var tblPost: UITableView!
    var idUser: Int!
    var nameUser: String!
    var arrayPost: [AllPost] = [] {
        didSet { tblPost.reloadData() }
    }
    
    private lazy var presenter: PostPresenter = {
       PostPresenter(controller: self)
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter.didLoad()
        print("POST: ", self.arrayPost)
        
        self.tblPost.register(UINib(nibName: "PostTableViewCell", bundle: nil), forCellReuseIdentifier: "PostTableViewCell")
        self.tblPost.dataSource = self
        
        self.lblName.text = self.nameUser
    }
    
}

extension PostViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.arrayPost.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let posts = self.arrayPost[indexPath.row]
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "PostTableViewCell", for: indexPath) as? PostTableViewCell else {
            return PostTableViewCell()
        }
        cell.lblTitle.text = posts.title
        cell.txtView.text = posts.body
        
        
        return cell
    }
    
    
}
