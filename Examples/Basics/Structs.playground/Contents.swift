import UIKit

struct Body {
    var weight: Double = 0
    var height: Double = 0
    
    // Include mutating to functions where they modify the struct
    mutating func addWeight(newWeight: Double) {
        weight = newWeight
    }
}


struct Boy {
    var name: String = ""
    var age: Int = 0
    
    func getAge() -> Int {
        return age
    }
}


struct Boy2 {
    var name: String = ""
    var age: Int = 0
    
    mutating func updateAge(newAge: Int) {
        self.age = newAge
    }
}

let boy2 = Boy2()
// boy2.updateAge(20)


var boy = Boy()
boy.getAge()
boy.name = "Jorge"
boy.name

var body = Body()
body.addWeight(70.00)


let body2 = Body()

// The following code fails, because the variable is a constant (let)
// body2.addWeight(80.0)
