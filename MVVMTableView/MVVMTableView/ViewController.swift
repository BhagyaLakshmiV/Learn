//
//  ViewController.swift
//  MVVMTableView
//
//  Created by BhagyaLakshmi on 20/04/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {

    var data = [
        Person(firstName:"Bhagya", lastname: "Lakshmi", city: "Bangalore",height: 5.5),
        Person(firstName: "Ramya",lastname: "Krishnan",city: "Hyderabad",height: 5.1),
        Person(firstName: "Vineeth",lastname: "Kumar",city: "Bangalore", height: 5.8),
    ]
    @IBOutlet weak var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTableView.delegate = self
        myTableView.dataSource = self
       
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let  cell = myTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let model = data[indexPath.row]
        let viewModel = CellViewModel(firstName: model.firstName, lastName: model.lastname)
        cell.textLabel?.text = "\(viewModel.firstName) \(viewModel.lastName)"
        return  cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myTableView.deselectRow(at: indexPath, animated: true)
    }
    


}
struct Person {
    
    let firstName: String
    let lastname: String
    let city: String
    let  height: Double
}

struct CellViewModel {
    let firstName: String
    let lastName: String
}
