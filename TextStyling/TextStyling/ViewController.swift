//
//  ViewController.swift
//  TextStyling
//
//  Created by BhagyaLakshmi on 18/04/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        label.text = "Hello "
        label.font = UIFont(name: "Roboto-BoldItalic", size: 32)
        //label.font = UIFont(name: "Rockwell-BoldItalic", size: 30)
       // label.font = UIFont(name: "TrebuchetMS-Bold", size: 32)
        // label.font = UIFont(name: "SnellRoundhand-Black", size: 32)

    }


}

