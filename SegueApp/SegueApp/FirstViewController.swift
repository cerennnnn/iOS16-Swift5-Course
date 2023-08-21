//
//  ViewController.swift
//  SegueApp
//
//  Created by Ceren Güneş on 20.08.2023.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // UIViewController Yasam Dongusu

        /*
         viewDidLoad() -> uygulama calistiktan hemen sonra, her View Controller icin bir defa calisir.
         viewWillAppear() -> kullaniciya gorunmeden hemen once
         viewDidAppear() -> kullaniciya gorundukten hemen sonra
         viewWillDisappear() -> ekran kaybolmadan hemen once
         viewDidDisappear() -> ekran kaybolduktan hemen sonra
         
         */
        print("viewDidLoad() calisti.")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear() calisti.")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear() calisti.")
    }

    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear() calisti.")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear() calisti.")
        nameTextField.text = ""
    }
    
    @IBAction func nextButtonTapped(_ sender: Any) {
        // next butonuna tiklandiginda bu segue'yi gerceklestir.
        
        guard let userName = nameTextField.text else { return }
        self.userName = userName
        
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segue olmadan hemen once gerceklesmesini istedigimiz islemleri buraya yaziyoruz:
        
        if segue.identifier == "toSecondVC" {
            let destionationVC = segue.destination as! SecondViewController // as! -> force downcasting
                destionationVC.myName = userName
        }
    }
}

