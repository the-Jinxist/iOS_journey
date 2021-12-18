//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    func loadStory() {
        storyLabel.text = storyBrain.getCurrentStory().title
        choice1Button.setTitle(storyBrain.getCurrentStory().choice1, for: .normal)
        choice2Button.setTitle(storyBrain.getCurrentStory().choice2, for: .normal)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadStory()
    }

    @IBAction func onChoiceMade(_ sender: UIButton) {
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        loadStory()
        
    }
    
}

