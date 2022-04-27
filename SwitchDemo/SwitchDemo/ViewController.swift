//
//  ViewController.swift
//  SwitchDemo
//
//  Created by BhagyaLakshmi on 27/04/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mySwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }


    @IBAction func switchDidChange(_ sender: UISwitch) {
        
        if sender.isOn {
            view.backgroundColor  = .blue
        }
        else {
            view.backgroundColor = .cyan
        }
    }
}

