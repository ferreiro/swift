# Functions

### Basic Structure

```Swift
func nameCamelCase() -> ReturnType {
  // Your code
}
```

### Parameters

- Passing a **parameter** called ``name``

  ```Swift
  func greetings(name: String) {
      print("Hello \(name)")
  }

  greetings("Jorge")
  => "Hello Jorge"
  ```

- You can pass **"Default values"** to the parameters. So if you don't pass a parameter, function will use the Default one

  ```Swift
  func greetings2(name: String = "Default Name") {
    print("Hello \(name)")
  }

  greetings2()
  => "Hello Default Name"

  greetings2("Jorge")
  => "Hello Jorge"
  ```

- Passing a **list of parameters**:

  You only need to put **...** after parameter type declaration:

  ```Swift
  func greetings3(names: String...) {
    for name in names {
      print("Hi \(name)")
    }
  }

  greetings3("Jorge")
  => "Hi Jorge"

  greetings3("Jorge", "Rachel", "Paul")
  => "Hi Jorge"
  => "Hi Rachel"
  => "Hi Paul"
  ```

- **Parameters with an alias** name. You can define 2 alias. One internal (to use inside your function) and one external (to use by the client)

  ```Swift
  // You can have an alias of parameters. So when you call the function, you use the alias
  func greetings4(outAlias insideAlias:String) {
    print("Hello \(insideAlias) ")
  }

  greetings4(outAlias:"Jorge")
  ```

  Another Example:

  ```Swift
  func greetings4(outName name:String, outAge age: Int) {
      print("My name is \(name) and my age is \(age)")
  }
  greetings4(outName: "Ferr", outAge: 20)
  ```

### Return types

- Return **Integer** Numbers.

  ```Swift
  func myAge() -> Int {
    return 20;
  }
  ```

- Return **String**.

  ```Swift
  func myName() -> String {
    return "Jorge"
  }
  ```

- **Void** Functions can include "Void" return Type or nothing.

  Define a **void function** that prints a message:

  ```Swift
  func voidGreetings() {
      print("Hello!")
  }

  func voidGreetings2() -> Void {
    print("Jorge")
  }

  voidGreetings()
  voidGreetings2()
  ```

=============================
[<- Return Index](/README.md)
