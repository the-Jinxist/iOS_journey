//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let questions = [
        ["Messi is the best player in de world", "True"],
        ["Rice is better than beans", "False"],
        ["Neymar is top 3", "False"]
    ]
    
    var questionNumber: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }


    @IBAction func onAnswerButtonTap(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle
        let actualAnswer = questions[questionNumber][1]
        
        if(userAnswer == actualAnswer){
            print("Correct Answer")
        }else{
            print("Incorrect Answer")
        }
        
        if questionNumber >= 2 {
            questionNumber = 0
        } else{
            questionNumber += 1
        }
        
        updateUI()
    }
    
    func updateUI() {
        questionText.text = questions[questionNumber][0]
    }
}

