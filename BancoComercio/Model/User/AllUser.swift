//
//  AllUser.swift
//  BancoComercio
//
//  Created by Raul Kevin Aliaga Shapiama on 5/9/23.
//

import Foundation

struct AllUser : Decodable {
    let id: Int
    let name: String
    let username: String
    let email: String
    let address: Adress?
    let phone: String
    let website: String
    let company: Company?
}
