struct FixedLengthRange {
    var firstValue: Int
    let length: Int
}
let rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
print(rangeOfThreeItems.length)


struct Cuboid {
    var width = 0.0, height = 0.0, depth = 0.0
    var volume: Double {
        return width * height * depth
    }
}
let fourByFiveByTwo = Cuboid(width: 4.0, height: 5.0, depth: 2.0)
print("the volume of fourByFiveByTwo is \(fourByFiveByTwo.volume)")*/

class DataImporter {
    var filename = "data.txt"
}

class DataManager {
    lazy var importer = DataImporter()
    var data: [String] = []
}

let manager = DataManager()
manager.data.append("Some data")
manager.data.append("Some more data")
print(manager.data)
print(manager.importer.filename)

struct Person {
    var name = "Taylor"
    var favoriteColor = "red"
    var favoriteCity = "Tokyo"
    var favoriteFood = "tea"

    var greeting: String {
        return "Hello, my name is \(name), and I like \(favoriteFood), \(favoriteCity), and the color \(favoriteColor)."
    }
}

var person = Person()
print(person.greeting)

/*struct Content {
    var name: String
    let fileExtension: String
    
    // A computed property to generate a filename
    var filename: String {
        return name + "." + fileExtension
    }
}

let content1 = Content(name: "swiftlee-banner", fileExtension: "png")
print(content.filename)*/

@propertyWrapper
struct SmallNumber {
    private var number: Int
    private(set) var projectedValue: Bool

    var wrappedValue: Int {
        get { return number }
        set {
            if newValue > 12 {
                number = 12
                projectedValue = true
            } else {
                number = newValue
                projectedValue = false
            }
        }
    }

    init() {
        self.number = 0
        self.projectedValue = false
    }
}
struct SomeStructure {
    @SmallNumber var someNumber: Int
}
var someStructure = SomeStructure()

someStructure.someNumber = 4
print(someStructure.$someNumber)


someStructure.someNumber = 35
print(someStructure.$someNumber)
