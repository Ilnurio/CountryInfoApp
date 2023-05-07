//
//  Country.swift
//  CountryInfoApp
//
//  Created by Ilnur on 07.05.2023.
//

import Foundation

struct Country: Decodable {
    let name: String
    let code: String
    let emoji: String
    let image: URL
}
