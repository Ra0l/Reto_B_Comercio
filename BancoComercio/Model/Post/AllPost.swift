//
//  AllPost.swift
//  BancoComercio
//
//  Created by Raul Kevin Aliaga Shapiama on 5/9/23.
//

import Foundation

struct AllPost: Decodable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}
