//
//  ViewController.swift
//  orion-ios-school
//
//  Created by Aleksandra Glinina on 24.06.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var checkAnswerButton: UIButton!
    @IBOutlet weak var userInputNum: UITextField!
    @IBOutlet weak var greeting: UILabel!
    @IBOutlet weak var resetButton: UIButton!

    var a = Int.random(in: 0..<100)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greeting.text = "Program will generate number from 0 to 100. Try to guess it!"
        result.text = ""
    }

    @IBAction func pressedButton(_ sender: UIButton) {
        var b: Int
        if let text = userInputNum.text, let intText = Int(text) {
            b = intText
        } else {
            b = 0
        }
        
        if b > a {
            result.text = "Много"
        } else if a > b {
            result.text = "Мало"
        } else {
            result.text = "Угадал"
        }
        
        if result.text == "Угадал" {
            resetButton.isHidden = false
        }
    }
    
    @IBAction func resetGame(_ sender: Any) {
        result.text = ""
        userInputNum.text = ""
        resetButton.isHidden = true
        a = Int.random(in: 0..<100)
    }
}

