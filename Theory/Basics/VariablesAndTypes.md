[<- Return Index](/README.md)


# Types of variables
- **let:** When you don't want to allow value of the variable change
- **var:** Value can change during the program execution.

# Type inference

There are two ways of declaring varibles:
**Explicitly:** You define the type (So the compiler will report an error if you try to assign values of different Types).

```Swift
var a: Int
var b: Int = 20
var c: String = "Hello"
```

**No types (Inference):** When you assign a value, the compiler will infer its type.

```Swift
var d = 10 // Compiler knows this is an Integer
var e = "Hello" // Infer a String variable
```

# String interpolation

When you want to add a variable to an string, you can interpolate it:

```Swift
var fullName = "Jorge"
=> "Jorge"

var greetings = "Hello! My name is \(fullName). Nice to meet you."
=> "Hello! My name is Jorge. Nice to meet you."
```
