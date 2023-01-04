//
//  ViewController.swift
//  BeerStoreApp
//
//  Created by Milana Antonova on 4.01.23.
//

import UIKit

class ViewController: UIViewController {
    //MARK: Outlets
    @IBOutlet weak var firstBeerLabel: UILabel!
    @IBOutlet weak var secondBeerLabel: UILabel!
    @IBOutlet weak var thirdBeerLabel: UILabel!
    @IBOutlet weak var firstBeerQuantityLabel: UILabel!
    @IBOutlet weak var secondBeerQuantityLabel: UILabel!
    @IBOutlet weak var thirdBeerQuantityLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    
    //MARK: ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstBeerLabel.text = Manager.shared.beers[0].name
        secondBeerLabel.text = Manager.shared.beers[1].name
        thirdBeerLabel.text = Manager.shared.beers[2].name
        
        firstBeerQuantityLabel.text = "0"
        secondBeerQuantityLabel.text = "0"
        thirdBeerQuantityLabel.text = "0"
        
        messageLabel.text = ""
    }

    //MARK: IBActions
    @IBAction func addFirstBeerButtonPressed(_ sender: UIButton) {
        if (Manager.shared.beers[0].sellQuantity < Manager.shared.beers[0].remainingVolume) {
            Manager.shared.beers[0].sellQuantity += 1
            firstBeerQuantityLabel.text = String(Manager.shared.beers[0].sellQuantity)
        }
    }
    @IBAction func addSecondBeerButtonPressed(_ sender: UIButton) {
        if (Manager.shared.beers[1].sellQuantity < Manager.shared.beers[1].remainingVolume) {
            Manager.shared.beers[1].sellQuantity += 1
            secondBeerQuantityLabel.text = String(Manager.shared.beers[1].sellQuantity)
        }
    }
    @IBAction func addThirdBeerButtonPressed(_ sender: UIButton) {
        if (Manager.shared.beers[2].sellQuantity < Manager.shared.beers[2].remainingVolume) {
            Manager.shared.beers[2].sellQuantity += 1
            thirdBeerQuantityLabel.text = String(Manager.shared.beers[2].sellQuantity)
        }
    }
    @IBAction func subtractFirstBeerButtonPressed(_ sender: UIButton) {
        if (Manager.shared.beers[0].sellQuantity > 0) {
            Manager.shared.beers[0].sellQuantity -= 1
            firstBeerQuantityLabel.text = String(Manager.shared.beers[0].sellQuantity)
        }
    }
    @IBAction func subtractSecondBeerButtonPressed(_ sender: UIButton) {
        if (Manager.shared.beers[1].sellQuantity > 0) {
            Manager.shared.beers[1].sellQuantity -= 1
            secondBeerQuantityLabel.text = String(Manager.shared.beers[1].sellQuantity)
        }
    }
    @IBAction func subtractThirdBeerButtonPressed(_ sender: UIButton) {
        if (Manager.shared.beers[2].sellQuantity > 0) {
            Manager.shared.beers[2].sellQuantity -= 1
            thirdBeerQuantityLabel.text = String(Manager.shared.beers[2].sellQuantity)
        }
    }
    @IBAction func sellButtonPressed(_ sender: UIButton) {
    }
    @IBAction func startDayButtonPressed(_ sender: UIButton) {
    }
    @IBAction func endDayButtonPressed(_ sender: UIButton) {
    }

}

