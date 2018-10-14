//
//  ViewController.swift
//  Clicker
//
//  Created by Eileen Lee on 11/10/2018.
//  Copyright © 2018 Eileen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var counter = 0 {
        didSet {
            updateTextColor()
        }
    }
    
    @IBOutlet weak var counterLabel: UILabel!
    
    @IBAction func decrementLabel(_ sender: Any) {
        counter -= 1
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        counter += 1
    }
    
    func updateTextColor() {
        counterLabel.text = "🧒\(counter)"
        if counter % 5 == 0 {
            counterLabel.textColor = UIColor.green
        } else {
            counterLabel.textColor = UIColor.blue
        }
    }


}

