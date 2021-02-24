import UIKit

// Optionals

//MARK:- Handling missing data

var age: Int? = nil

age = 26


//MARK:- Unwrapping optionals

var name: String? = nil

if let unwrapped = name {
    print("\(unwrapped.count) letters!")
} else {
    print("Missing names!")
}

//MARK:- Unwrapping with guard

func greet(_ name: String?) {
    
    guard let unwrapped = name else {
        print("you didn't provide a name!")
        return
    }
    
    print("Hello, \(unwrapped)")
}

greet("Ahmed")

//MARK:- Force unwrapping

let str = "5"
let num = Int(str)!


//MARK:- Implicitly unwrapped optionals

let adress: String! = nil


//MARK:- Nil coalescing

func username(for id: Int) -> String? {
    if id == 1 {
        return "Ahmed khairi"
    } else {
        return nil
    }
}


let user = username(for: 77) ?? "Anonymous"

//MARK:- Optional chaining

let names = ["Ahmed", "Osama", "Laila", "Abdorhman"]
let bros = names.first?.uppercased()


//MARK:- Optional try

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool{
    if password == "password" {
        throw PasswordError.obvious
    }
    
    return true
}

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You cause that password.")
}


if let result = try? checkPassword("password") {
    print("Result was \(result)")
} else {
    print("D'oh!")
}


try! checkPassword("sekrit")
print("OK!")


//MARK:- Failable initializers

let srt = "8"
let number = Int(srt)

// you can write like these on your own

struct Person {
    var id: String
    
    init?(id: String) {
        if id.count == 9 {
            self.init(id: id)
        } else {
            return nil
        }
    }
}


//MARK:- Typecasting

class Animal {}

class Fish: Animal {}

class Dog: Animal {
    func makeNoise() {
        print("Woof!!")
    }
}


let pets = [Dog(), Fish(), Dog(), Fish()]

for pet in pets {
    if let dog = pet as? Dog {
        dog.makeNoise()
    }
}
