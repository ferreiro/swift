# Extensions

You can extend the functionality of your code: class, struct, etc.

### Example 1: Making a to string function (description)

```Swift
struct Point{
    let x: Double
    let y: Double
}

print(Point(x:1, y:2))

extension Point: CustomStringConvertible {
    var description: String {
        return "This is a point \(x) : \(y)"
    }
}
```

=============================
[<- Return Index](/README.md)
