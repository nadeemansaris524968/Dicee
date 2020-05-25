//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    @IBOutlet weak var rollBtn: UIButton!
    
    let diceImages = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rollBtn.layer.cornerRadius = 5
        rollBtn.layer.borderWidth = 0.5
        rollBtn.layer.borderColor = UIColor.black.cgColor
    }

    @IBAction func rollBtnPressed(_ sender: UIButton) {
        diceImageViewOne.image = diceImages.randomElement()
        diceImageViewTwo.image = diceImages.randomElement()
    }
}
