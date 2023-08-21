//
//  ViewController.swift
//  HesapMakinesi
//
//  Created by Ceren Güneş on 17.08.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNumberTextField: UITextField!
    @IBOutlet weak var secondNumberTextField: UITextField!
    var result = 0
    
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.text = "\(result)"
    }

    @IBAction func plusButtonTapped(_ sender: UIButton) {
        if let firstNumber = firstNumberTextField.text, let secondNumber = secondNumberTextField.text {
            if let firstNumberInt = Int(firstNumber), let secondNumberInt = Int(secondNumber) {
                result = firstNumberInt + secondNumberInt
                resultLabel.text = "\(result)"
            }
        }
    }
    
    @IBAction func minusButtonTapped(_ sender: UIButton) {
        if let firstNumber = firstNumberTextField.text, let secondNumber = secondNumberTextField.text {
            if let firstNumberInt = Int(firstNumber), let secondNumberInt = Int(secondNumber) {
                result = firstNumberInt - secondNumberInt
                resultLabel.text = "\(result)"
            }
        }
    }
    
    @IBAction func MultiplyButtonTapped(_ sender: UIButton) {
        if let firstNumber = firstNumberTextField.text, let secondNumber = secondNumberTextField.text {
            if let firstNumberInt = Int(firstNumber), let secondNumberInt = Int(secondNumber) {
                result = firstNumberInt * secondNumberInt
                resultLabel.text = "\(result)"
            }
        }
    }
    
    @IBAction func DivisionButtonTapped(_ sender: UIButton) {
        if let firstNumber = firstNumberTextField.text, let secondNumber = secondNumberTextField.text {
            if let firstNumberInt = Int(firstNumber), let secondNumberInt = Int(secondNumber) {
                result = firstNumberInt / secondNumberInt
                resultLabel.text = "\(result)"
            }
        }
    }
    
}

