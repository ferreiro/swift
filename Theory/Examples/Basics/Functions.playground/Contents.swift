func greetings() {
    print("Hello!")
}

func greetings2(name: String) {
    print("Hello \(name)")
}

// You can have an alias of parameters. So when you call the function, you use the alias

func greetings3(outsideAlias name: String) {
    print("Hello \(name)")
}


// You can pass a list of parameters with ...
func greetings4(outsideAlias friends: String...) {
    for friend in friends {
        print("Hello \(friend)")
    }
}

func greetings5(outName name:String, outAge age: Int) {
    print("My name is \(name) and my age is \(age)")
}



greetings()
greetings2("Jorge")
greetings3(outsideAlias: "Jorge")
greetings4(outsideAlias: "Jorge", "Paul", "Lurdes")

greetings5(outName: "Ferr", outAge: 20)
// Note. I don't know why, but swift let you to not include the first "outName" map
greetings5(outName: "Ferr", outAge: 20)