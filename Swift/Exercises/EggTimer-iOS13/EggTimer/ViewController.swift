//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let soft = 5 * 60
    let medium = 7 * 60
    let hard = 12 * 60
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle!
        
        switch hardness {
        case "Soft":
            print(soft)
        case "Medium":
            print(medium)
        case "Hard":
            print(hard)
        default:
            print("Error")
        }
    }
    

}
