//
//  Country.swift
//  CountryFact
//
//  Created by Hua Son Tung on 06/01/2022.
//

import Foundation

struct Country: Codable {
    var name: String
    var capital: String
    var population: Int
    var area: Double?
    var currencies: [Currency]
    
}

struct Currency: Codable {
    var symbol: String
    var code: String
    var name: String
}
