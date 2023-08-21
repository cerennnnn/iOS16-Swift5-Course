//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by Ceren Güneş on 20.08.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var birthdayTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        // Casting -> as? vs as!
        
        if let newName = storedName as? String, let newBirthday = storedBirthday as? String {
            nameLabel.text = "Name: \(newName)"
            birthdayLabel.text = "Birthday: \(newBirthday)"
        }
    }

    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let name = nameTextField.text, let birthday = birthdayTextField.text else { return }
        
        UserDefaults.standard.set(name, forKey: "name")
        UserDefaults.standard.set(birthday, forKey: "birthday")
        
        nameLabel.text = "Name: \(name)"
        birthdayLabel.text = "Birthday: \(birthday)"
    }
    
    @IBAction func deleteButtonTapped(_ sender: Any) {
        
        let userDefaults = UserDefaults.standard
        
        let storedName = userDefaults.object(forKey: "name")
        let storedBirthday = userDefaults.object(forKey: "birthday")
        
        if (storedName as? String) != nil {
            userDefaults.removeObject(forKey: "name")
            nameLabel.text = "Name: "
        }
        
        if (storedBirthday as? String) != nil {
            userDefaults.removeObject(forKey: "birthday")
            birthdayLabel.text = "Birthday: "
        }
        
    }
}


// User Defaults -> Kucuk verileri tutmak icin kullanilan bir db.

