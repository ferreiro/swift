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


=============================
[<- Return Index](/README.md)
