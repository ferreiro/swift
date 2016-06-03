# Dictionaries

A Swift Struct with <key, value>

### Empty Dictionary

```Swift
var myDict: [String:Int] = [:]
```

### Dictionary with inferred types

```Swift
var myDict2 = [ "Key1" : 1, "Key2" : 2]
```

### Dictionaries with repeated keys are wrong

```Swift
// If you try to repeat a key value, a runtime exception will be raised.
var wrongDict = [
    "Key1" : 1,
    // "Key1" : 1 -- Repeated key, runtime exception
]
```

### Methods with dictionaries

- **Update a Value**: If key is not found, add to the dictionary (returning nil)

```Swift
// When a value does not exist. It is created
myDict.updateValue(10, forKey: "Key1")
myDict.removeValueForKey("Key1")
```

- Erased a key
```Swift
myDict.removeValueForKey("Key1")
```

- When nil value is assigned to a key. It's removed from the dictionary.

```Swift
// When you assign a nil value to a key. It's erased.
myDict2["Key1"] = nil
```


=============================
[<- Return Index](/README.md)
