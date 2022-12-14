//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        playSound(key: sender.currentTitle!)
        sender.layer.opacity = 0.5
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.layer.opacity = 1
        }
    }
    
    func playSound(key: String) {
        let url = Bundle.main.url(forResource: key, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}


