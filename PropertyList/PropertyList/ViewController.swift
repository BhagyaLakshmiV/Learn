//
//  ViewController.swift
//  PropertyList
//
//  Created by BhagyaLakshmi on 19/04/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageview: UIImageView!
    struct  Settings: Codable  {
        var image: String
        var color: Int
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        if let settings =  self.getSettings() {
            let  colorName = String(format: "Color %i", settings.color)
            view.backgroundColor = UIColor(named: colorName)
            imageview.image = UIImage(named: settings.image)
        }
        
    }

    func getSettings() -> Settings?{
        
        let decoder = PropertyListDecoder()
        
        let url = Bundle.main.url(forResource: "Settings", withExtension: "plist")!
        if let data = try? Data(contentsOf: url) {
            if let settings =  try? decoder.decode(Settings.self, from: data){
                return  settings
            }
    }
        return nil
    
        


}
        

        }
