//
//  Country.swift
//  CountryInfoApp
//
//  Created by Ilnur on 07.05.2023.
//

import Foundation

struct Country {
    let name: String
    let capital: String
    let population: Int
    let area: Int
    let languages: Language
    let flag: String
}

struct Language {
    let name: String
}
