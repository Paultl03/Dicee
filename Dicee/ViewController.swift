//
//  ViewController.swift
//  Dicee
//
//  Created by Paul Logan III on 6/7/19.
//  Copyright © 2019 Paul Logan III. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4","dice5","dice6"]
    
    var randomDiceNumber1: Int = 0
    var randomDiceNumber2 : Int = 0
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceImage()
        
        
        
        
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        updateDiceImage()
       
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImage()
    }
   
    func updateDiceImage() {
        
        randomDiceNumber1 = Int.random(in: 0...5)
        randomDiceNumber2 = Int.random(in: 0...5)
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceNumber1])
         diceImageView2.image = UIImage(named: diceArray[randomDiceNumber2])
    }
    
    
}



