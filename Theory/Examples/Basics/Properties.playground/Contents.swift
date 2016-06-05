import UIKit

// Properties

class ExampleClass {
    var property1: Int = 0
    var property2: String = ""
    
    let constProperty: Int = 20
}

var ec = ExampleClass()
ec.property1
ec.property2
ec.constProperty
// Fails (Constant can not modied) => ec.constProperty = 20

struct Example2 {
    var name: String = "Jorge"
    var age: Int = 20
    
    // Computed Properties
    var userInfo: String {
        get {
            return "My name is \(name) and I am \(age) years old"
        }
    }
}

var e2 = Example2()
e2.userInfo

// Property Observable

class Company {
    var employeeNumber: Int = 0 {
        willSet {
            print("The employee number was \(employeeNumber) and the new employee numbers will be \(newValue)")
        }
        didSet {
            print("Employee number was \(oldValue). After calling the set function, the new employee number is \(employeeNumber)")
        }
    }
}

var c = Company()
c.employeeNumber = 30