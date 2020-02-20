//
//  ViewController.swift
//  DisplayTorch
//
//  Created by FelixP on 20.02.20.
//  Copyright © 2020 XU Exponential University. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var onButton: UIButton!
    let turnOnText = "tap here to switch on the torch"
    let turnOffText = "tap here to switch off the torch"
    
    var isOn = false
    
    let onColor = UIColor.white
    let offColor = UIColor.black
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        onButton.setTitle(turnOnText, for: .normal)
        view.backgroundColor = offColor
    }

    @IBAction func switchTorch(_ sender: UIButton) {
        view.backgroundColor = isOn ? offColor : onColor
        onButton.setTitle(isOn ? turnOnText : turnOffText, for: .normal)
        
        isOn = !isOn
    }
    
}

