//
//  ResultController.swift
//  Tipsy
//
//  Created by Favour Olukayode on 29/12/2021.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import UIKit

class ResultController: UIViewController {

    @IBOutlet weak var perPersonLabel: UILabel!
    @IBOutlet weak var resultText: UILabel!
    
    var splitNumber: Int = 0
    var tipPercent: Int = 0
    var billPerPerson: Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        perPersonLabel.text = "\(billPerPerson)"
        resultText.text = "Split between \(splitNumber) people, with \(tipPercent)% tip."
    }
    

    @IBAction func onRecalculateTap(_ sender: UIButton) {
        dismiss(animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
