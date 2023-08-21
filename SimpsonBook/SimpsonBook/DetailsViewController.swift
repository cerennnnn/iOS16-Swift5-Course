//
//  DetailsViewController.swift
//  SimpsonBook
//
//  Created by Ceren Güneş on 21.08.2023.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var occupationLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var selectedSimpson: Simpson?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = selectedSimpson?.name
        occupationLabel.text = selectedSimpson?.job
        imageView.image = selectedSimpson?.image
    }

}
