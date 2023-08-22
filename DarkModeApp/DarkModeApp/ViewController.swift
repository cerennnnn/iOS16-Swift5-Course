//
//  ViewController.swift
//  DarkModeApp
//
//  Created by Ceren Güneş on 22.08.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var changeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
         
        
        overrideUserInterfaceStyle = .dark // kullanicinin tercihine bakmadan burdan light/dark atayabiliriz.
    }

    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        let userInterfaceStyle = traitCollection.userInterfaceStyle

        if userInterfaceStyle == .dark {
            changeButton.tintColor = .white
        } else {
            changeButton.tintColor = .blue
        }
    }
}

