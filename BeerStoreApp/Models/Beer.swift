//
//  Carlsberg.swift
//  BeerStoreApp
//
//  Created by Milana Antonova on 4.01.23.
//

import Foundation

class Beer {
    
    var name: String
    var price: Double
    var remainingVolume: Int = 100
    var sellQuantity: Int = 0
    
    init(name: String, price: Double, remainingVolume: Int, sellQuantity: Int) {
        self.name = name
        self.price = price
        self.remainingVolume = remainingVolume
        self.sellQuantity = sellQuantity
    }
    
}
