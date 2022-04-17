class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
        
    }
}

let someVehicle = Vehicle()
print("Vehicle: \(someVehicle.description)")

class Bicycle: Vehicle {
    var hasBasket = false
}

let bicycle = Bicycle()
bicycle.hasBasket = true

bicycle.currentSpeed = 15.0
print("Bicycle: \(bicycle.description)")

//overriding

class Train: Vehicle {
    override func makeNoise() {
        print("Choo Choo")
    }
}
let train = Train()
train.makeNoise()

class Animal {

  // properties and method of the parent class
  var name: String = ""

  func eat() {
    print("I can eat")
  }
}

class Dog: Animal {
  func display() {
    print("My name is ", name);
  }
}

var labrador = Dog()

labrador.name = "coco"
labrador.eat()

labrador.display()

class Animal1 {

  // create method in superclass
  func eat() {
    print("I can eat")
  }
}

class Dog1: Animal1 {

  override func eat() {

  super.eat()
  print("I eat dog food")
  }
}

var labrador1 =  Dog1()

labrador1.eat()

