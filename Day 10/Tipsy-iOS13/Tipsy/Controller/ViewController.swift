//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalLabel: UITextField!
    
    @IBOutlet weak var zeroTipButton: UIButton!
    @IBOutlet weak var tenTipButton: UIButton!
    @IBOutlet weak var twentyTipButton: UIButton!
    
    @IBOutlet weak var splitLabel: UILabel!
    
    var tip: Float = 0.1
    var split: Int = 2
    
    let tipBrain = TipBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func onValueChanged(_ sender: UIStepper) {
        let value = Int(sender.value)
        
        split = value
        splitLabel.text = "\(value)"
    }
    
    @IBAction func onZeroTipButtonTapped(_ sender: UIButton) {
        tip = 0.0
        zeroTipButton.isSelected = true
        
        tenTipButton.isSelected = false
        twentyTipButton.isSelected = false
    }
    
    @IBAction func onTenTipButtonTapped(_ sender: UIButton) {
        tip = 0.1
        tenTipButton.isSelected = true
        
        twentyTipButton.isSelected = false
        zeroTipButton.isSelected = false
    }
    
    @IBAction func onTwentyTipButtonTapped(_ sender: UIButton) {
        tip = 0.2
        twentyTipButton.isSelected = true
        
        zeroTipButton.isSelected = false
        tenTipButton.isSelected = false
        
        
    }
    
    @IBAction func onCalculateTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "showResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "showResult"){
            let resultController = segue.destination as! ResultController
            
            resultController.tipPercent = Int(tip * 100)
            resultController.splitNumber = split
            
            let billPerPerson = tipBrain.generateBillPerPerson(
                tipPercent: tip,
                totalBill: Float(totalLabel.text ?? "0.0")!,
                splitNumber: split
            )
            
            resultController.billPerPerson = billPerPerson
        }
    }
    
}

