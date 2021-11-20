//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    let softTime = 5
    let mediumTime = 7
    let hardTime = 12
    
    let eggTimes = ["soft": 30, "medium": 7  * 60, "hard": 12  * 60]
    
    var timer : Timer?
    var timeLeft: Int = 0
    var totalTime: Int = 0
    
    @IBOutlet weak var headerText: UILabel!
    
    @IBOutlet weak var eggProgressView: UIProgressView!
    
    var player: AVAudioPlayer!
    
    @IBAction func hardnessTapped(_ sender: UIButton) {
        
        timer?.invalidate()
        headerText.text = "How do you like your eggs?"
        
        let hardness = sender.currentTitle!
        print("Boil time is \(eggTimes[hardness.lowercased()] ?? 10)")
        
        eggProgressView.progress = 0.0
        
        timeLeft = eggTimes[hardness.lowercased()]!
        totalTime = timeLeft
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(onTimerFires), userInfo: nil, repeats: true)
    }
    
    @objc func onTimerFires()
    {
        
        timeLeft -= 1
        
        updateProgress(timeLeft: timeLeft)
        
        if timeLeft <= 0 {
            headerText.text = "Done!"
            eggProgressView.progress = 0.0
            timer?.invalidate()
            timer = nil
            
            playSound(soundName: "alarm_sound")
        }
    }
    // Various operators for comparing variables
    // ==, <=, =>, != , <, >
    
    func updateProgress(timeLeft: Int){
        
        let timePassed: Int = totalTime - timeLeft
        
        eggProgressView.progress = Float(timePassed) / Float(totalTime)
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}
