# Classes

Classes and structures are general-purpose, flexible constructs that become the building blocks of your program’s code.

### Definition

```Swift
class Person {
  var age: Int = 0
  var name: String = ""
}

var jorge = Person()
jorge.name = "Jorge"
jorge.age = 20

print("My name is \(jorge.name) and I'm \(jorge.age)")
```
### Properties

See [Properties File](./Properties.md)

### Static Properties

**Static** variables are shared between all the class objects.

That is, if modify an static attribute, it's updated for all the instances (objects) of that class

```Swift
class Car {
  static let defaultSpeed = 30
}

print(Car.defaultSpeed)
=> 30
```

### Constant instances with let

When you create a constant instance, you can modify the attributes of the object (in structs dont). However, you can not assign another object to the varibl.

```Swift
let jorge = Person()
var jorgeCloned = Person()

jorge = jorgeCloned
=> error: cannot assign to value: 'jorge' is a 'let' constant
```

### Comparing Objects (===)

You have to use **===** to compare objects. Basically, they compare the references between objects.

```Swift
p1 = Person()
p2 = Person()

p1 === p2
=> False (compares references)
```

Note: You can not use === with structs, because in structs always you pass by copy (that is, you make a copy of the object).

### Inheritance

```Swift
class Employee: Person {
  var id: Int = 0
}
```

=============================
[<- Return Index](/README.md)
