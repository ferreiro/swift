# Sets

### Features:

- **Unordered** list of elements.
- No-repeated values.
- Good **alternative to Arrays** (Use them!)

**Warning** Due the elements is not ordered. You can not think that inserting 4 elements. You can not assume that their indexes are the same as when you insert them.

### Methods
![](Assets/Basics/Sets.png)

### Creating Sets

```Swift
var friends = Set<String>()
var friends2: Set<String> = []

var friends3 = Set(["Juliet", "George", "Tim"])
var friends4 = Set(["George", "Paul"])
```

### Methods

- Intersect 2 Sets.

```Swift
friends3.intersect(friends4)
// => George
```

- ExclusiveOr between 2 sets

```Swift
friends3.exclusiveOr(friends4)
// => ("Paul", "Tim", "Juliet")
```
- Count of elements

```Swift
print(friends3.count)
```

- insertion

```Swift
friends3.insert("Paulina")
friends4.insert("Rachel")
```

### Iterate through Set

You can not assume any order when traversing the Set. Because they are not ordered by insertion.

```Swift
// You can not assume any order here
for name in friends3 {
    print("Friend name is \(name)")
}
```


=============================
[<- Return Index](/README.md)
