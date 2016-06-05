import UIKit

// Arrays are a list of elements with all of them
// with the same type

// You can define an array with a concrete type
// or you can let Swift compiler to inferre it

var books: [String] = [
    "Clean Coder",
    "Swift: the awesome parts",
    "Javascript: The Good Parts"
]

var animals = [
    "Lion",
    "Tiger",
    "Dolphin"
]

// Arrays properties

books.first
books.count
books.capacity

// Some methods or properties can returned nil values.
// So you have to check first if the value is nil or not.
// A good practise is assign the returned value to an 'optionals' variable myBook

if let myBook = books.first {
    print("The Book exists!")
    print(myBook)
}
else {
    print("The book is nil")
}

// Arrays Functions

books[0] = "The Cleaner Code"
books.append("Design Patterns")
books.appendContentsOf([
    "Another Book 1",
    "Another Book 2"
])

let removedBook = books.removeAtIndex(books.count - 1)
