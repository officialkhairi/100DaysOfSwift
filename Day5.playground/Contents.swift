import UIKit

//MARK:- Writing functions

func printHelp() {
    let messege = """
    Welcome to MyApp!

    Run this app inside a directory of images and
    MyApp will resize them all into thumbnails

    """
    
    print(messege)
}

printHelp()

//MARK:- Accepting parameters

print("Hello world!")

func squareN(number: Int) {
    print(number * number)
}

squareN(number: 6)

//MARK:- Returning values

func square(number: Int) -> Int {
    return number * number
}

let x = square(number: 8)

print(x)


//MARK:- Parameter labels

func sayHello(to name: String) {
    print("Hello \(name)")
}

sayHello(to: "Ahmed")


//MARK:- Omitting parameter labels

func greet(_ name: String) {
    print("Hey \(name)!")
}

greet("Ahmed")


//MARK:- Default parameters

func greet(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}

greet("Osama")
greet("ali", nicely: false)

//MARK:- Variadic functions
print("Haters", "gonna", "hate")

func squareNum(numbers: Int...) {
    for number in numbers {
        print("\(number) square is \(number * number)")
    }
}

squareNum(numbers: 1,2,3,4,5,6,7,8,9,0)


//MARK:- Writing throwing functions

enum PasswordError: Error {
    case obvious
}


func checkPassword(_ password: String) throws -> Bool{
    
    if password == "password" {
        throw PasswordError.obvious
    }
    
    return true
}

//MARK:- Running throwing functions

do {
    try checkPassword("password")
    print("That's a good password")
} catch {
    print("You can't use this password")
}


//MARK:- inout parameters

func doubleInPlace(number: inout Int) {
    number *= 2
}

var num = 10
doubleInPlace(number: &num)

print(num)
