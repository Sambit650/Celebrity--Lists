//
//  DetailsViewController.swift
//  colldemo
//
//  Created by Sambit Das on 12/08/19.

import UIKit

class DetailsViewController: UIViewController {
    
    //MARK:- Outlets and Variables
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lbl: UILabel!
    
    var img1 : UIImage!
    var lbl1 : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        img.image = img1
        lbl.text = lbl1
    }
}
