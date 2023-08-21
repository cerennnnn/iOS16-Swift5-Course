//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Ceren Güneş on 21.08.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var simpsons = [Simpson]()
    var simpson: Simpson?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        // Simpson Objects
        let marge = Simpson(name: "Marge", job: "Doctor", image: UIImage(named: "marge")!)
        let homer = Simpson(name: "Homer", job: "Nuclear Safety", image: UIImage(named: "homer")!)
        let lisa = Simpson(name: "Lisa", job: "Student", image: UIImage(named: "lisa")!)
        let bart = Simpson(name: "Bart", job: "Student", image: UIImage(named: "bart")!)
        
        simpsons = [marge, homer, lisa, bart]
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return simpsons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = simpsons[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        simpson = simpsons[indexPath.row]
        
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.selectedSimpson = simpson
        }
    }
}
