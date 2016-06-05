
// Int function

func myAge() -> Int {
    return 20;
}

// String function

func myName() -> String {
    return "Jorge"
}

// Void

func voidGreetings() {
    print("Hello!")
}

func voidGreetings2() -> Void {
    print("Jorge")
}

voidGreetings()
voidGreetings2()

    
////////////////
// Parameters //
////////////////

func greetings(name: String) {
    print("Hello \(name)")
}

greetings("Jorge")
    
// You can pass **"Default values"** to the parameters. 
// So if you don't pass a parameter, function will use the Default one

func greetings2(name: String = "Default Name") {
    print("Hello \(name)")
}

greetings2()
greetings2("Jorge")
    
// Passing a List of parameters.
// You only need to put **...** after parameter type declaration:

func greetings3(names: String...) {
    for name in names {
        print("Hi \(name)")
    }
}

greetings3("Jorge")
greetings3("Jorge", "Rachel", "Paul")

// Parameters with an alias name. 
// You can define 2 alias. One internal (to use inside your function) 
// and one external (to use by the client)

func greetings4(outAlias insideAlias:String) {
    print("Hello \(insideAlias) ")
}

func greetings5(outName name:String, outAge age: Int) {
    print("My name is \(name) and my age is \(age)")
}

greetings4(outAlias:"Jorge")
greetings5(outName: "Ferr", outAge: 20)
