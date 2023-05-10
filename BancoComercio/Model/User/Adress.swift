//
//  Adress.swift
//  BancoComercio
//
//  Created by Raul Kevin Aliaga Shapiama on 5/9/23.
//

import Foundation

struct Adress: Decodable {
    let street: String
    let suite: String
    let city: String
    let zipcode: String
}
