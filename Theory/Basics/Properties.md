# Properties

Properties are associate values with a particular class, structure, or enumeration. Stored properties store constant and variable values as part of an instance, whereas computed properties calculate (rather than store) a value.

Reference: [Properties in Swift](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Properties.html#//apple_ref/doc/uid/TP40014097-CH14-ID254)

### Two types of properties:

- **Stored Properties:**<br/>In its simplest form, a stored property is a constant or variable that is stored as part of an instance of a particular class or structure. Stored properties can be either variable stored properties (introduced by the var keyword) or constant stored properties (introduced by the let keyword).

  *For classes:*

  ```Swift
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
  ```

  *For structs:*

  ```Swift
  struct Example {
      var stored1: Int = 0
      let constStored: String = ""
  }

  var e = Example()
  e.stored1
  e.constStored
  ```

- **Computed Properties:**<br />In addition to stored properties, classes, structures, and enumerations can define computed properties, which do not actually store a value. Instead, they provide a getter and an optional setter to retrieve and set other properties and values indirectly.

  ```Swift
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
  => "My name is Jorge and I am 20 years old"
  ```

###Visibility of Properties:

- **Internal** (by default)
- **Private**
- **Public**

### Property Observers

Property observers observe and respond to changes in a property’s value. Property observers are called every time a property’s value is set, even if the new value is the same as the property’s current value.

- **willSet** is called just before the value is stored.

- **didSet** is called immediately after the new value is stored.

```Swift
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
```

### Static Properties

**Static** variables are shared between sll the class objects.

That is, if modify an static attribute, it's updated for all the instances (objects) of that class

```Swift
class Car {
  static let defaultSpeed = 30
}

print(Car.defaultSpeed)
=> 30
```

=============================
[<- Return Index](/README.md)
