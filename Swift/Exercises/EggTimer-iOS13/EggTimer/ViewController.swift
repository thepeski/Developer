//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let eggTimes = ["Soft": 5 * 120, "Medium": 7 * 120, "Hard": 12 * 120]
    var totalTime = 0
    var timePassed = 0
    
    var timer = Timer()
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var timerLabel: UILabel!
    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle!
        
        timer.invalidate() // reset timer
        progressBar.progress = 0.0
        timePassed = 0
        timerLabel.text = hardness
        
        
        totalTime = eggTimes[hardness]!
        
        // calls the selector function every second
        timer = Timer.scheduledTimer(timeInterval: 1 / 120, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        
    }
    
    @objc func updateTimer() { // specify we're using objective C selectors
        if timePassed < totalTime {
            timePassed += 1
            let percentageProcess = Float(timePassed) / Float(totalTime)
            
            progressBar.progress = percentageProcess
        } else {
            timer.invalidate() // stop timer
            timerLabel.text = "Done!"
        }
    }
    

}
