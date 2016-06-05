# Structs

Classes and structures are general-purpose, flexible constructs that become the building blocks of your program’s code.

Structs are perfect for functional programming because is like immutable objets (EG: always pass by value, so never modified the original object)

### Definition

```Swift
struct Body {
    var height: Double = 0
    var weight: Double = 0
}

var body = Body()
body.height = 1.85
body.weight = 70.0
```

### Include a struct inside a class

Inside a class, you can have an **attribute of the Struct Type**

```Swift
struct Body {
    var height: Double = 0
    var weight: Double = 0
}

class Person {
    var body: Body = Body()
}

var jorge = Person()

print(jorge.weight)
=> 0

print(jorge.height)
=> 0
```

### Struct Functions

Structs can have functions inside:

```
// Struct with a function that DO NOT modified any attribute

struct Boy {
  var name: String = ""
  var age: Int = 0

  func getAge() -> Int {
    return age
  }
}

var boy = Boy()
boy.getAge()
```

If your struct function will modified any attribute of the struct you **MUST include "mutating"** to the func. That's because structs are thinking for functional programming.

```Swift
struct Boy2 {
    var name: String = ""
    var age: Int = 0

    mutating func updateAge(newAge: Int) {
        self.age = newAge
    }
}

var boy2 = Boy2()
boy2.updateAge(20)
```

### Constant Structs with let

When you use `let` variable to instantiate a new struct, you **can not modified its attributes** after (in classes, when you use let, you can modify the object but don't assign a different reference. In the struct you can not modify any value).

```Swift
Struct Boy3 {
  var name: String = ""
  mutating setName(newName: String) {
    self.name = newName
  }
}

let boy3 = Boy3()
boy.setName("Jorge")

=> "error: cannot use mutating member on immutable value: 'boy3' is a 'let' constant
```

### Structs are always pass by value

This is really important and this makes the structs the best data structure for **functional programming** in Swift.

Let's define a Car Struct and create a car object

```Swift
Struct Car {
  var color: String = "Red"
  var brand: String = "Ferrari"
}

c1 = Car()
```

Now, if you assign this variable c1 to a new variable c2, **c1 is copied** (so c2 has a new object)!!

```Swift
c2 = c1 // c1 is copied to c2 (new object)
```

So if you modified c2, c1 will have the same values as before and is not modified.

```Swift
c2.color = "Blue"
c2.brand = "Mercedes"

// c1 is not changed.

print(c1.color)
=> Red

print (c1.brand)
=> Ferrari
```


=============================
[<- Return Index](/README.md)
