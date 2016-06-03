Starting Learning Swift 3 Junio 2015 at 01:34am

# Swift

Programming language created by Chris Lattner and launch in 2014 by Apple.

**Features:**

1. Cross platform (Ios, MacOsx, AppleWatch).
2. Perfect for Functional programming.

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

# Tuples

In a mathematical way, a tuple is an ordered list of elements (you can mix different types of variables).
When you define a tuple in Swift, you can access the elements either by **Index** or by **key**.

### Un-named tuples (by Index)

```Swift
let errorTuple = (404, "Page not Found")

errorTuple.0
=> 404

errorTuple.1
=> "Page not Found"
```

### Named tuples (by Key)

```Swift
let error2 = (code:404, description:"Page not Found")

error2.code
=> 404

error2.description
=> "Page not Found"
```

### Tuples: Pattern Matching

```Swift
var book = (
    title: "Swift, the good parts",
    price: 20
)

let (bookTitle, _) = book
bookTitle

=> "Swift, the good parts"
```

# Arrays

A list of elements with the **same type**.
You can create fors in different ways. But I recommend you to use the first one.

### Arrays Vs. Tuples

In a tuple, each element can have different types.
In an array, you can only put one type (Eg: array of Strings, array of Integers, etc...)

# Conditionals

```Swift
var yourName = "Janex"

if yourName == "Janex" {
  print("Welcome Janex!")
}
```

- **Ternary** (Use them with moderation ^_^)
```Swift
var level = 10
var result = level > 0 ? "Win" : "Loose"

print(result)
```

# Loops

### Whiles

```Swift
var a = 3

while a > 0 {
  print(a);
  a -= 1
}

=> 0
=> 1
=> 2
```

### Do-whiles

In swift 3, do-while is deprecated. Instead, you have to use repeat-while

```Swift
var w = 3

repeat {
    print("Hello dude")
    w -= 1
} while (w > 0)

=> "Hello dude"
=> "Hello dude"
=> "Hello dude"
```

### Foor loops
- **1. For (The Ruby way :P)**

  ```Swift
  for i in 1...3 {
      print("Swift is incredible \(i)")
  }
  
  => Swift is incredible 1
  => Swift is incredible 2
  => Swift is incredible 3
  ```
- **2. Normal** and boring C for loop
  
  > This form is deprecated in Swift3!
  
  ```Swift
  for var i = 0; i < 3; i += 1 {
    print(i)
  }
  
  => 0
  => 1
  => 2
  ```
  
# Switch Statement

You can create variables inside the conditions like isAWolf
or for example, create conditionals (&&)

This is more powerful than other languages. Because you can add conditions, variables, etc. 

**Features:**

- Conditionals inside the case variableA && variableB
- No **break** needed.
- You can create variables inside each case.
- Ranges case 0...15:

### Examples:

```Swift
let character = "The Wolf"

switch character {
    case "Batman":
        print("Batman is awesome")
    case let isAWolf where character.hasSuffix("Wolf"):
        print("It's a Wolf")
    default:
        print ("Not valid Character")
}
```

**Including ranges:**
    
```Swift
var awesomeNumber = 10

switch awesomeNumber {
    case 0...5:
        print("Greater or lesser than 5")
    default:
        print("Greater than 5")
}
```

# Optionals Types

**Optionals** are variables that can be nil or contains a value.

### Declaring optionals

You have to include a question mark **?** after the variable Type like this:

```Swift
var optionalVar: String? // This is nil

print(optionalVar)
=> nil
```

But optionals, can also be initialize to some value...

```Swift
var optionalVar2: String? = "This optional variable is not nil. It contains a value"

print(optionalVar2)
=> "This optional variable is not nil. It contains a value"
```

And finally, you can set nil value any time on the program

```Swift
var optionalVar3: int?

optionalVar3 = nil
```

### Unwrapping optionals values

So whenever you need a value for an optional, you have to be sure that this variable is not nil.

The following code will report an error

```Swift
var a: int?

a + 10
=> error: value of optional type 'Int?' not unwrapped; did you mean to use '!' 
```

So to unwrap an optional value, you have to use exclamation mark **!**. 
However this is **not a good practice**

### Good practise when using optionals.

So using exclamation mark **!** to unwrap a value is **not a good practise**. Instead, you can use an optional variable:

```Swift
var xyz: Int?

xyz = nil

if let optionalVariable = xyz {
    print("Variable 'xyz' is not nil!")
    print("Let's print the value /(optionalVariable)")
}
else {
    print("Variable 'xyz' is nil...")
```

### Recommendations with optionals

1. It's better not to use them. Only use optionals in some particular cases.
2. Don't use ! directly. Use an optional variable instead.
