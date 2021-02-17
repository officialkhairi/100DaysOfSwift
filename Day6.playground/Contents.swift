import UIKit

//Closures, part ONE:

//MARK:- Creating basic closures

let driving = {
    print("I'm driving my Lexus")
}

driving()

//MARK:- Accepting parameters in a closure

let reading = { (book: String) in
    print("I'm reading \(book) book!\n")
}

reading("CTCI")


//MARK:- Returning values from a closure

let drivingWithReturn = { (place: String) -> String in
    return "I'm driving my car to \(place)"
}

let message = drivingWithReturn("Khartoum")

print(message)

//MARK:- Closures as parameters

func travel(action: () -> Void) {
    print("I'm getting ready to go!")
    action()
    print("I arrived!\n-")
}

//travel(action: driving)

//MARK:- Trailing closure syntax

travel() {
    print("I'm driving my car!")
}

travel {
    print("I'm driving my car!")
}
