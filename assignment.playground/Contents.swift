import UIKit

class Student{
    var name: String
    enum  section{
        case a
        case b
    }
    var marks: Double
    init(name: String, marks: Double){
        self.name = name
        self.marks = marks
        
    }
}

var st: [Student] = []

let student1 = Student(name: "Micheal", marks: 80)
let student2 = Student(name: "Bhagya", marks: 98)
let student3 = Student(name: "Bill", marks: 77)
st.append(student1)
st.append(student2)
st.append(student3)

let sorting = st.sorted(by: {$0.marks > $1.marks})
sortstudents(st: sorting)

func sortstudents(st: [Student]) {
    st.map{  print("Name: \($0.name), Marks:\($0.marks)")}
}

let sortalphabetic = st.sorted(by: {$0.name < $1.name})
sortstudents(st: sortalphabetic)

//stack implementation
struct Stack {
    private var myArray: [String] = []
    
    mutating func push(_ element: String) {
        myArray.append(element)
    }
    
    mutating func pop() -> String? {
        return myArray.popLast()
    }
    
    func peek() -> String {
        guard let topElement = myArray.last else {return "This stack is empty."}
        return topElement
    }
}

var stack = Stack()
stack.push("Swift Arrays")
stack.push("Swift LinkedList")
stack.push("Swift Stack")
print(stack)
stack.peek()
print(stack)
stack.pop()
print(stack)
stack.pop()
print(stack)


