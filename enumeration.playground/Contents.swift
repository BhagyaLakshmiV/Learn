enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}
enum CompassPoint {
    case north
    case south
    case east
    case west
}

var directionToHead = CompassPoint.west
directionToHead = .east

directionToHead = .south
switch directionToHead {
case .north:
    print("Lots of planets have a north")
case .south:
    print("Watch out for penguins")
case .east:
    print("Where the sun rises")
case .west:
    print("Where the skies are blue")
}

enum Beverage: CaseIterable {
    case coffee, tea, juice
}
let numberOfChoices = Beverage.allCases.count
print("\(numberOfChoices) beverages available")

for beverage in Beverage.allCases {
    print(beverage)
}

enum Planet1: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}

let earthsOrder = Planet1.earth.rawValue
print(earthsOrder)
