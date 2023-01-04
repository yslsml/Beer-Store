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
    
    var totalIncome = 0.0
    
    let beers: [Beer] = [
            Beer(name: "Heineken", price: 2.5, remainingVolume: 100, sellQuantity: 0),
            Beer(name: "Carlsberg", price: 2.9, remainingVolume: 100, sellQuantity: 0),
            Beer(name: "Giunness", price: 3.1, remainingVolume: 100, sellQuantity: 0)
        ]

    func sellBeer(_ beer: Beer) {
        beer.remainingVolume -= beer.sellQuantity
        beer.sellQuantity = 0
    }
    
    func sell() {
        var totalSum = getTotalSumOfShopping()
        for beer in beers {
            sellBeer(beer)
        }
        totalIncome += totalSum
    }
    
    func getTotalSumForBeer(_ beer: Beer) -> Double {
        return beer.price * Double(beer.sellQuantity)
    }
    
    func getTotalSumOfShopping() -> Double {
        var totalSum = 0.0
        for beer in beers {
            totalSum += getTotalSumForBeer(beer)
        }
        return totalSum
    }
    
}
