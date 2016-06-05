import UIKit

struct Body {
    var weight: Double = 0
    var height: Double = 0
    
    mutating func addWeight(newWeight: Double) {
        weight = newWeight
   }
}

// CLASS

class Person {
    static let defaultWeight = 30
    var body: Body = Body()
    
    func setBody(newBody: Body) {
        self.body = newBody
    }
    
    // Static function for static attribute
    static func returnDefatulWeight() -> Int {
        return defaultWeight
    }
}

Person.returnDefatulWeight() // Update Static attribute

// Creating a person object and update the Body

var jorge = Person()
var newBody = Body()

newBody.weight = 10
newBody.height = 100.0

jorge.setBody(newBody)


// xtends the Person class

class Employee: Person {
    var IDEmployee = 0
    
    func assignID(newID: Int) {
        IDEmployee = newID
    }
}


// En las instancias de clases, cuando creas una variable constante,
// no garantiza que

let employee = Employee()
employee.assignID(30)

let e1 = Employee()
let e2 = Employee()

print(e1 === e2)


var p1 = Person()
var p2 = Person()

p1 === p2
