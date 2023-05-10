//
//  Data+DTO.swift
//  BancoComercio
//
//  Created by Raul Kevin Aliaga Shapiama on 5/9/23.
//

import Foundation

extension Data {
    
    func toDTO<Generic>(_ type: Generic.Type) -> Generic? where Generic: Decodable {
        return try? JSONDecoder().decode(type, from: self)
    }
    
    func printLog() {
        let json = try? JSONSerialization.jsonObject(with: self, options: .fragmentsAllowed)
        print(json ?? "El Servicio no tiene respuesta")
    }
}
