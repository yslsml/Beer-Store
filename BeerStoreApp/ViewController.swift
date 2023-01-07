//
//  ViewController.swift
//  BeerStoreApp
//
//  Created by Milana Antonova on 4.01.23.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var firstBeerLabel: UILabel!
    @IBOutlet weak var secondBeerLabel: UILabel!
    @IBOutlet weak var thirdBeerLabel: UILabel!
    @IBOutlet weak var firstBeerQuantityLabel: UILabel!
    @IBOutlet weak var secondBeerQuantityLabel: UILabel!
    @IBOutlet weak var thirdBeerQuantityLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    
    //MARK: - let/var
    let firstBeerName = BeerBrand.firstBeer.rawValue
    let secondBeerName = BeerBrand.secondBeer.rawValue
    let thirdBeerName = BeerBrand.thirdBeer.rawValue
    
    //MARK: - lifecycle funcs
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstBeerLabel.text = BeerBrand.firstBeer.rawValue
        secondBeerLabel.text = BeerBrand.secondBeer.rawValue
        thirdBeerLabel.text = BeerBrand.thirdBeer.rawValue
        firstBeerQuantityLabel.text = "0"
        secondBeerQuantityLabel.text = "0"
        thirdBeerQuantityLabel.text = "0"
        messageLabel.text = ""
    }

    //MARK: - IBActions
    @IBAction func addFirstBeerButtonPressed(_ sender: UIButton) {
        messageLabel.text = ""
        firstBeerQuantityLabel.text = Manager.shared.addBeer(Manager.shared.getBeer(name: firstBeerName))
    }
    @IBAction func addSecondBeerButtonPressed(_ sender: UIButton) {
        messageLabel.text = ""
        secondBeerQuantityLabel.text = Manager.shared.addBeer(Manager.shared.getBeer(name: secondBeerName))
    }
    @IBAction func addThirdBeerButtonPressed(_ sender: UIButton) {
        messageLabel.text = ""
        thirdBeerQuantityLabel.text = Manager.shared.addBeer(Manager.shared.getBeer(name: thirdBeerName))
    }
    @IBAction func subtractFirstBeerButtonPressed(_ sender: UIButton) {
        messageLabel.text = ""
        firstBeerQuantityLabel.text = Manager.shared.subtractBeer(Manager.shared.getBeer(name: firstBeerName))
    }
    @IBAction func subtractSecondBeerButtonPressed(_ sender: UIButton) {
        messageLabel.text = ""
        secondBeerQuantityLabel.text = Manager.shared.subtractBeer(Manager.shared.getBeer(name: secondBeerName))
    }
    @IBAction func subtractThirdBeerButtonPressed(_ sender: UIButton) {
        messageLabel.text = ""
        thirdBeerQuantityLabel.text = Manager.shared.subtractBeer(Manager.shared.getBeer(name: thirdBeerName))
    }
    @IBAction func sellButtonPressed(_ sender: UIButton) {
        messageLabel.text = Manager.shared.createMessageLabelText(Manager.shared.getAllBeers())
        Manager.shared.sell()
        firstBeerQuantityLabel.text = "0"
        secondBeerQuantityLabel.text = "0"
        thirdBeerQuantityLabel.text = "0"
    }
    @IBAction func startDayButtonPressed(_ sender: UIButton) {
        Manager.shared.startDay()
        messageLabel.text = "The new day is started"
    }
    @IBAction func endDayButtonPressed(_ sender: UIButton) {
        messageLabel.text = "Total income: \(Manager.shared.totalIncome)$"
    }

}

