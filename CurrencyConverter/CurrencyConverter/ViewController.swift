//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Ceren Güneş on 22.08.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var CADLabel: UILabel!
    @IBOutlet weak var CHFLabel: UILabel!
    @IBOutlet weak var GBPLabel: UILabel!
    @IBOutlet weak var JPYLabel: UILabel!
    @IBOutlet weak var USDLabel: UILabel!
    @IBOutlet weak var TRYLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func getRatesButtonTapped(_ sender: Any) {
        
        // 1 - Request & Session
        let url = URL(string: "http://data.fixer.io/api/latest?access_key=429c2445c6260ad72d5d030167bb80c7")
        let session = URLSession.shared
        
        let task = session.dataTask(with: url!) { data, response, error in
            if error != nil {
                let alert = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default))
                self.present(alert, animated: true)
            } else {
                if data != nil {
                    
                    do {
                        let jsonResponse = try JSONSerialization.jsonObject(with: data!, options: .mutableContainers) as! Dictionary<String, Any>
                        
                        DispatchQueue.main.async {
                            if let rates = jsonResponse["rates"] as? [String: Any] {
                                if let cad = rates["CAD"] as? Double {
                                    self.CADLabel.text = "CAD: \(String(cad))"
                                }
                                if let chf = rates["CHF"] as? Double {
                                    self.CHFLabel.text = "CHF: \(String(chf))"
                                }
                                if let gbp = rates["GBP"] as? Double {
                                    self.GBPLabel.text = "GBP: \(String(gbp))"
                                }
                                if let jpy = rates["JPY"] as? Double {
                                    self.JPYLabel.text = "JPY: \(String(jpy))"
                                }
                                if let usd = rates["USD"] as? Double {
                                    self.USDLabel.text = "CAD: \(String(usd))"
                                }
                                if let turkish = rates["TRY"] as? Double {
                                    self.TRYLabel.text = "TRY: \(String(turkish))"
                                }
                            }
                            
                        }
                    } catch {
                        print("error")
                    }
                    
                    
                    
                }
            }
        
        }
        
        task.resume()
        
        // 2 - Response & Data
        
        // 3 - Parsing & JSON Serialization
    }
    
}

