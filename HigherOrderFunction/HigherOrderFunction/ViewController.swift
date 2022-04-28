//
//  ViewController.swift
//  HigherOrderFunction
//
//  Created by BhagyaLakshmi on 27/04/22.
//

import UIKit

class ViewController: UIViewController {
    
    var array = ["car","bus",  "plane", "auto", "bike"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        array.sort()
        //print(array)
        //let sortedarray  = array.sorted(by: { $0 > $1})
        let sorted   = array.sorted(by: {(a,b) -> Bool in
            return a > b} )
        print(sorted)
        
       // print(sortedarray)
    
       var person = [Person]()
        person.append(Person(name: "bhagya", age: 25, place: "Bangalore"))
        person.append(Person(name: "Soniya", age: 26, place: "Hyderabad"))
        person.append(Person(name: "Keerthi", age: 30, place: "New  Delhi"))
        person.append(Person(name: "kaviya", age: 32, place: "Bangalore"))
        //print(person)
        
        let filtereddata = person.filter( {$0.age < 30})
        print(filtereddata)
        
        let mapdata = person.map({ ($0.name, $0.age)})
        print(mapdata)
        
        let data = ["swift", "12","cars","44"]
        print(data.compactMap({  Int($0)}))
        
        let data1 = [[12,34,5],[33,45,11],[56,57,43]]
        let flattendata = data1.reduce([],+)
        print(flattendata.reduce(3,+))
        
        
        
       
    }


}
struct Person {
    var name:  String
    var age: Int
    var place: String
}

