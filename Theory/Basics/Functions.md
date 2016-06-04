# Functions

### Basic Structure

```Swift
func nameCamelCase() -> ReturnType {
  // Your code
}
```

### Return types

```Swift
func myAge() -> Int {
  return 20;
}

func myName() -> String {
  return "Jorge"
}
```

Void Functions can include "Void" return Type or nothing.

```Swift
func greetings() -> Void {
  print("Jorge")
}
func myName() {
  print("Jorge")
}
```

### Examples

Define a void function that prints a message:

```Swift
func greetings() {
    print("Hello!")
}

greetings()
```

- Passing Parameters:

  ```Swift
  func greetings2(name: String) {
      print("Hello \(name)")
  }

  greetings2("Jorge")
  ```

- Parameters with an alias name. You can define 2 alias. One internal (to use inside your function) and one external (to use by the client)

  ```Swift
  // You can have an alias of parameters. So when you call the function, you use the alias

  func greetings3(outsideAlias name: String) {
      print("Hello \(name)")
  }
  greetings3(outsideAlias: "Jorge")
  ```

  Another Example:

  ```Swift
  func greetings4(outName name:String, outAge age: Int) {
      print("My name is \(name) and my age is \(age)")
  }
  greetings4(outName: "Ferr", outAge: 20)
  ```

- Passing a list of parameters using ``...``

  ```Swift
  // You can pass a list of parameters with ...
  func greetings5(outsideAlias friends: String...) {
      for friend in friends {
          print("Hello \(friend)")
      }
  }
  greetings5(outsideAlias: "Jorge", "Paul", "Lurdes")
  ```

=============================
[<- Return Index](/README.md)
