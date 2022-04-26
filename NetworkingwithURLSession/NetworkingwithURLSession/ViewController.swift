//
//  ViewController.swift
//  NetworkingwithURLSession
//
//  Created by BhagyaLakshmi on 20/04/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //post request
        
        let params = [
            "title": "My Data",
            "body": "This is the body  of the  post"
        ]
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
            return
        }
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("Application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody =  try? JSONSerialization.data(withJSONObject: params, options: [])
        
        let session = URLSession.shared.dataTask(with: request) {
            data, responds, error in
            
            if let error = error {
                print("there was a error \(error.localizedDescription)")
            }
            
            else {
                let jsonresult  = try? JSONSerialization.jsonObject(with: data!, options: [])
                print(jsonresult)
            }
            
        }.resume()
        
    }
    //get request
    func getPosts(){
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts")
        else { return}
        
        let session = URLSession.shared.dataTask(with: url){
            data, response, error in
            if  let error = error {
                print("there was an  error\(error.localizedDescription)")
            }
            else{
                let jsonresult = try? JSONSerialization.jsonObject(with: data!, options: [])
                print("the response\(jsonresult)")
            }
        }.resume()
    }


}

