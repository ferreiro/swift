import UIKit

var optionalString: String? = "10"

if let s = optionalString {
    if let i = Int(s) {
        print("The integer is \(i)")
    }
}

// Previous if condition, can be do in this way (Beautiful)
// Conditions are evaluated from left to right
// If the first condition fails. It will not execute the next one

if let s = optionalString, i = Int(s) {
    print("String is \(s); integer is \(s)")
}

let anInteger = 10
let anotherInteger: Int = anInteger.successor()

print("\(anotherInteger)")

var optionalInteger: Int? = nil
var nextInteger = optionalInteger?.successor() // If optional is nil, then successor is not called
print("\(nextInteger)")

