//
//  ViewController.swift
//  Networking
//
//  Created by BhagyaLakshmi on 27/04/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
         guard let url = URL(string: "https://gorest.co.in/public/v2/users") else {
            return
        }
        let  session  = URLSession.shared.dataTask(with: url) {
            data, response, error  in
            if let error = error {
                print("there was  error \(error.localizedDescription)")
            }
            else {
                var  userData = [GorestData]()
                do{
                    let decoder = JSONDecoder()
                    userData = try decoder.decode([GorestData].self, from: data!)
                }
                catch {
                    print("error while decoding data \(error)")
                }
                
                
                //print("the data received is \(userData)")
                let mydata =  userData
                print("reframed data \(mydata)")
                print("____________________________")
                print("after sorting")
               let  sorteddata = mydata.sorted {  $0.name < $1.name}
                print(sorteddata)
                
                let filterinactiveuser = mydata.filter { $0.status == "inactive"}
                print("_____________________________")
                print("After filtering")
                print(filterinactiveuser)
        
        
            }
        }.resume()
        
        
        /*let  session  = URLSession.shared.dataTask(with: url) {
            data, response, error  in
            if let error = error {
                print("there was  error \(error.localizedDescription)")
            }
            else {
                let jsonresponse = try? JSONSerialization.jsonObject(with: data!, options: [])
               
            }
        }.resume()*/
        
        
    
    }}

    struct GorestData: Decodable {
        let email: String
        let gender:  String
        let id: Int
        let name: String
        let status: String
    }




