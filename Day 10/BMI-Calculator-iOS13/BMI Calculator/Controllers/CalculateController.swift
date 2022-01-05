//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    var calculatorBrain = CalculatorBrain()
    
    var heightValue : Float = 1.5
    var weightValue: Float = 100.0
    
    var bmi : Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onWeightChanged(_ sender: UISlider) {
        
        //trimming the float value to only two decimal places
        let roundedDown = (sender.value * 100).rounded() / 100
        print(roundedDown)
        
        weightValue = roundedDown
        weightLabel.text = String(roundedDown) + "kg"
        
    }
    
    @IBAction func onHeightChanged(_ sender: UISlider) {
        
        //trimming the float value to only two decimal places
        let roundedDown = (sender.value * 100).rounded() / 100
        print(roundedDown)
        
        heightValue = roundedDown
        heightLabel.text = String(roundedDown) + "m"
    }
    
    @IBAction func onCalculateButtonTapped(_ sender: UIButton) {
        
        let bmi = calculatorBrain.calculateBMI(height: heightValue, weight: weightValue)
        print("Calculated BMI: \(bmi)")
        
//        let secondViewController = SecondViewController()
//        secondViewController.bmiValue =
//        self.present(secondViewController, animated: true, completion: nil)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC: ResultViewController = segue.destination as! ResultViewController
            
            destinationVC.bmi = calculatorBrain.getFormattedBMI()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
}

