//
//  DetailsViewController.swift
//  LandmarkBook
//
//  Created by Ceren Güneş on 21.08.2023.
//

import UIKit

class DetailsViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var selectedLandmarkName = ""
    var selectedLandmarkImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = selectedLandmarkName
        imageView.image = selectedLandmarkImage
        
    }
}
