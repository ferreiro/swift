import UIKit

var friends = Set<String>()
var friends2: Set<String> = []

var friends3 = Set(["Juliet", "George", "Tim"])
var friends4 = Set(["George", "Paul"])

friends3.intersect(friends4)
// => George

friends3.exclusiveOr(friends4)
// => ("Paul", "Tim", "Juliet")

friends3.insert("Paulina")
friends4.insert("Rachel")

// You can not assume any order here
for name in friends3 {
    print("Friend name is \(name)")
}

print(friends3.count)