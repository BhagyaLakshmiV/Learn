//
//  ViewController.swift
//  MyAnimation
//
//  Created by BhagyaLakshmi on 18/04/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var AnimateImage: UIImageView!
    
    @IBAction func StopAnimationButton(_ sender: Any) {
        
        AnimateImage.stopAnimating()
    }
    
    @IBAction func StartAnimationButton(_ sender: Any) {
        
        AnimateImage.animationImages  = [UIImage(named: "dragon1"), UIImage(named: "dragon2"),
        UIImage(named: "dragon3")] as? [UIImage]
        
        AnimateImage.animationRepeatCount = -1
        AnimateImage.animationDuration = 0.5
        AnimateImage.startAnimating()
    }
     
 

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

