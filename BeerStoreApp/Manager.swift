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
    
    private let beers: [Beer] = [
        Beer(name: BeerBrand.firstBeer.rawValue, price: 2.5, remainingVolume: 100, sellQuantity: 0),
        Beer(name: BeerBrand.secondBeer.rawValue, price: 2.9, remainingVolume: 100, sellQuantity: 0),
        Beer(name: BeerBrand.thirdBeer.rawValue, price: 3.1, remainingVolume: 100, sellQuantity: 0)
    ]
    
    func getBeer(name: String) -> Beer {
        return beers.filter({ $0.name == name }).first!
    }
    
    func getAllBeers() -> [Beer] {
        return beers
    }
    
    func sellBeer(_ beer: Beer) {
        beer.remainingVolume -= beer.sellQuantity
        beer.sellQuantity = 0
    }
    
    func sell() {
        let totalSum = getTotalSumOfShopping()
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
    
    func startDay() {
        for beer in beers {
            beer.remainingVolume = 100
            beer.sellQuantity = 0
        }
        totalIncome = 0
    }
    
    func addBeer(_ beer: Beer) -> String {
        if (beer.sellQuantity < beer.remainingVolume) {
            beer.sellQuantity += 1
        }
        return String(beer.sellQuantity)
    }
    
    func subtractBeer(_ beer: Beer) -> String {
        if (beer.sellQuantity > 0) {
            beer.sellQuantity -= 1
        }
        return String(beer.sellQuantity)
    }
    
    func createMessageLabelText(_ beers: [Beer]) -> String {
        var messageLabelText = ""
        for beer in beers {
            messageLabelText.append("\(beer.name): \(beer.price) * \(beer.sellQuantity) = \(getTotalSumForBeer(beer))$ \n")
        }
        messageLabelText.append("Total sum: \(getTotalSumOfShopping())$")
        return messageLabelText
    }
    
}
