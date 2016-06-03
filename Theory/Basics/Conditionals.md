
# Conditionals

```Swift
var yourName = "Janex"

if yourName == "Janex" {
  print("Welcome Janex!")
}
```

- **Ternary** (Use them with moderation, Because eligability can be reduced :P)

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
