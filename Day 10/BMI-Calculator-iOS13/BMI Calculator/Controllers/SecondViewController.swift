//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Favour Olukayode on 18/12/2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController{
    
    var bmiValue : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Code will be triggered when our view loads up
        view.backgroundColor = UIColor.red
        
        let label = UILabel()
        label.text = bmiValue
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        
        view.addSubview(label)
    }
    
}
