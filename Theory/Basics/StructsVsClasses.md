# Classes Vs. Structs

### Classes by Reference (Mutability) Vs. Structs by Value (Immutability)

When you assign one class instance to another, you're working with references.

```Swift
var a = CarClass()
var b = CarClass()

a.name = "Ferrari"
b.name = "Maserati"

a = b // Now a points to b :)

a.name
"Maserati"
```

In structs, when you do the previous thing, you always make a new copy.

```
var a = CarClass()
var b = CarClass()

a = b // Makes a new copy of b and assign it to a
```

### Yes inheritance (Class) vs. No inheritance (Structs)

Structs don't support inheritance, clasess do.

```Swift
class ParentClass {
  var name: String = ""
}

class ChildClass: ParentClass {
  // ChildClass has the name attribute from ParentClass
  var age: Int = 0
}
```

### Let in Classes Vs. Let in Structs

- In structs when you use the `let`you can not modified any of the attributes of the objet.

- In classes, when you define an object as constant, you **can modify** the attributes of the object. The only thing you can not do is assign another object.  
### Comparing objects with ===

- In structs you can not use `===`. Why? Because all the objects you create with an struct **will always be different**, because swift pass structs by value.

- In classes, you can use === to compare if 2 objects are equal or not.

```Swift
a = PersonClass()
b = PersonClass()

a == b
=> False

a = b // Assign b to a
a === b
=> True
```


=============================
[<- Return Index](/README.md)
