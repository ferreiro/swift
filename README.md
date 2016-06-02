Starting Learning Swift 3 Junio 2015 at 01:34

# Swift

Programming language created by Chris Lattner and launch in 2014 by Apple.
**Features:**
1. Cross platform (Ios, MacOsx, AppleWatch).
2. Perfect for Functional programming.
3. 

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
**No types (Inference): ** When you assign a value, the compiler will infer its type.
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

# Tuples

In a mathematical way, a tuple is an ordered list of elements.
When you define a tuple in Swift, you can access the elements either by **Index** or by **key**.

### Tuples by Index

```Swift
let errorTuple = (404, "Page not Found")

errorTuple.0
=> 404

errorTuple.1
=> "Page not Found"
```

### Tuples by Key

```Swift
let error2 = (code:404, description:"Page not Found")

error2.code
=> 404

error2.description
=> "Page not Found"
```
