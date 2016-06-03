import UIKit

var myDict: [String:Int] = [:]
var myDict2 = [ "Key1" : 1, "Key2" : 2]

// When a value does not exist. It can created
myDict.updateValue(10, forKey: "Key1")
myDict.removeValueForKey("Key1")

// If you try to repeat a key value, a runtime exception will be raised.
var wrongDict = [
    "Key1" : 1,
    // "Key1" : 1 -- Repeated key, runtime exception
]

// When you assign a nil value to a key. It's erased.
myDict2["Key1"] = nil
myDict.removeValueForKey("Key1")
myDict2
