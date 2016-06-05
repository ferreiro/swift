# Protocol

An structure which you define your API: what are those public methods that the user can use. If you're familiar with Java, protocols are "Java Interface".

So you don't include any code, just the properties and functions. So, protocols are like "unimplemented classes" which you can implement later or compound more complex protocols from it.

### Definition

Defining an Event protocol with 2 properties and 1 function.

**Important! - Naming convention:** To naming a protocol you have to put the name + "Type".

In the following example you create a protocol called "Named" (and add the Type word).

```Swift
protocol EventType {
    var title: String { get set }
    var id: Int { get }
    func createNotification()
}
```

### Protocol that inheritances from other protocol

You can compose more complex protocols from a given one.

```Swift
protocol ParentProtocolType {
  var name: String = ""
}
protocol ChildProtocolType : ParentProtocolType {
  // Includes all the things from parent + you can add more stuff inside it
}
```

### Class implementing a protocol

You have to include all the properties and functions from the implemented Protocol (if not, an error will occur)

```Swift
// Class implementing the protocol EventType

class SportEvent : EventType {
    var title: String = ""
    var id: Int = 0

    func createNotification() {
        // do something with notification
    }
}
```


=============================
[<- Return Index](/README.md)
