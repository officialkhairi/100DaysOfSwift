import UIKit

// Closures, part two

//MARK:- Using closures as parameters when they accept parameters

func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("Abu Dhabi")
    print("I arrived!\n")
}

travel { (place: String) in
    print("I'm going to \(place) in my car")
}


//MARK:- Using closures as parameters when they return values

func travel(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("Dubai")
    print(description)
    print("I arrived!\n")
}

travel { (place) -> String in
    return "I'm going to \(place) in my car"
}


//MARK:- Shorthand parameter names

travel {  "I'm going to \($0) in my car" }


//MARK:- Closures with multiple parameters

func travel(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("Dubai", 140)
    print(description)
    print("I arrived!\n")
}

travel {
    "I'm going to \($0) at \($1) KM per hour."
}


//MARK:- Returning closures from functions

func travel() -> (String) -> Void {
    return {
        print("I'm going to \($0)\n")
    }
}

let result = travel()
result("london")

//let result2 = travel()("London") its not recommended to use this synax


//MARK:- Capturing values

func  study() -> (String) -> Void {
    var counter = 1
    
    return {
        print("\(counter) I'm studing \($0) ")
        counter += 1
    }
}

let final = study()

final("Swift")
final("Swift")
final("Swift")
final("Swift")


//MARK:- Closures summary

/*
 
 
 - You can assign closures to variables, then call them later on.
 
 - Closures can accept parameters and return values, like regular functions.
 
 - You can pass closures into functions as parameters, and those closures can have parameters of their own and a return value.
 
 - If the last parameter to your function is a closure, you can use trailing closure syntax.
 
-  Swift automatically provides shorthand parameter names like $0 and $1, but not everyone uses them.
 
-  If you use external values inside your closures, they will be captured so the closure can refer to them later.
 
 */
