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


=============================
[<- Return Index](/README.md)
