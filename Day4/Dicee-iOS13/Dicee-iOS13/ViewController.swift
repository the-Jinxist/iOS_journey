//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //IBOutlet connected to the object in storyboard by tapping and //dragging it to the code view after changing the view of the storyboard to assistant view
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        print("Button tapped!")
            
        let images = [#imageLiteral(resourceName: "DiceOne")  , #imageLiteral(resourceName: "DiceTwo") , #imageLiteral(resourceName: "DiceThree") , #imageLiteral(resourceName: "DiceFour") , #imageLiteral(resourceName: "DiceFive") , #imageLiteral(resourceName: "DiceSix") ]
        
        diceImageView1.image =   images[Int.random(in: 0...5)]
        diceImageView2.image = images[Int.random(in: 0...5)]
        
        //Does the same thing, preferred because of less computing strain I suppose
        diceImageView2.image  = images.randomElement()
        diceImageView1.image = images.randomElement()
        
    }
    
    
}

