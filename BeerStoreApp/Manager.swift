//
//  Manager.swift
//  BeerStoreApp
//
//  Created by Milana Antonova on 4.01.23.
//

import Foundation

class Manager {
    
    static let shared = Manager()
    
    private init() {}
    
    let beers: [Beer] = [
            Beer(name: "Heineken", price: 2.5, remainingVolume: 100, sellQuantity: 0),
            Beer(name: "Carlsberg", price: 2.9, remainingVolume: 100, sellQuantity: 0),
            Beer(name: "Giunness", price: 3.1, remainingVolume: 100, sellQuantity: 0)
        ]

}
