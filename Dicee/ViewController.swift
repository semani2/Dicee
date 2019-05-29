//
//  ViewController.swift
//  Dicee
//
//  Created by Sai Emani on 5/28/19.
//  Copyright © 2019 Sai Emani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceImageArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
    }
    
    @IBAction func rollButtonPressed(_ sender: Any) {
        updateDiceImages()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
    fileprivate func updateDiceImages() {
        let diceImageIndex1 = Int.random(in: 0...5)
        let diceImageIndex2 = Int.random(in: 0...5)
        
        diceImageView1.image = UIImage(named: diceImageArray[diceImageIndex1])
        diceImageView2.image = UIImage(named: diceImageArray[diceImageIndex2])
    }
    
}

