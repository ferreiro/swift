
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
