//
//  SecondViewController.swift
//  SegueApp
//
//  Created by Ceren Güneş on 20.08.2023.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    var myName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = myName
        print("SecondViewController viewDidLoad() calisti.")
    }

}
