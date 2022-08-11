//
//  SecondViewController.swift
//  SegueApp
//
//  Created by Gizem on 10.06.2022.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var myLable: UILabel!
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    var myName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = myName

        // Do any additional setup after loading the view.
    }
    


}
