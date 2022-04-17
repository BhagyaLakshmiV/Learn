protocol Greet {
    
  var name: String { get }

  func message()
}

class Employee: Greet {
    
  var name = "Perry"

  func message() {
    print("Good Morning!")
  }
}

var employee1 = Employee()
employee1.message()

protocol Polygon {

  func getArea(length: Int, breadth: Int)
}

class Rectangle: Polygon {

  // implementation of method
  func getArea(length: Int, breadth: Int) {
    print("Area of the rectangle:", length * breadth)
  }
}

var r1 = Rectangle()

r1.getArea(length:5, breadth: 6)

protocol Sum {

  func addition()
}

// create Multiplication protocol
protocol Multiplication {

  func product()
}

// conform class to two protocols
class Calculate: Sum, Multiplication {

  var num1 = 0
  var num2 = 0

  func addition () {
    let result1 = num1 + num2
    print("Sum:", result1)
  }

  func product () {
    let result2 = num1 * num2
    print("Product:", result2)
  }
                   
}

var calc1 = Calculate()

// assign values to properties
calc1.num1 = 5
calc1.num2 = 10

// access methods
calc1.addition()
calc1.product()

protocol Togglable {
    mutating func toggle()
}

enum OnOffSwitch: Togglable {
    case off, on
    mutating func toggle() {
        switch self {
        case .off:
            self = .on
        case .on:
            self = .off
        }
    }
}
var lightSwitch = OnOffSwitch.off
lightSwitch.toggle()


protocol TextRepresentable {
    var textualDescription: String { get }
}

struct Hamster {
    var name: String
    var textualDescription: String {
        return "A hamster named \(name)"
    }
}
extension Hamster: TextRepresentable {}

let simonTheHamster = Hamster(name: "Simon")
let somethingTextRepresentable: TextRepresentable = simonTheHamster
print(somethingTextRepresentable.textualDescription)

protocol Named {
    var name: String { get }
}
protocol Aged {
    var age: Int { get }
}
struct Person: Named, Aged {
    var name: String
    var age: Int
}
func wishHappyBirthday(to celebrator: Named & Aged) {
    print("Happy birthday, \(celebrator.name), you're \(celebrator.age)!")
}
let birthdayPerson = Person(name: "Malcolm", age: 21)
wishHappyBirthday(to: birthdayPerson)
