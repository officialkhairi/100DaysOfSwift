import UIKit

// protocols and Protocol-oriented programming (POP).

//MARK:- Protocols

protocol Identifiable {
    var id: String { get set }
}

struct User: Identifiable {
    var id: String
}


func displayID(thing: Identifiable) {
    print("My id is \(thing.id)")
}

//MARK:- Protocol inheritance

protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

struct Employee: Payable, NeedsTraining, HasVacation {
    func calculateWages() -> Int {
        return 0
    }
    
    func study() {}
    
    func takeVacation(days: Int) {
    }
}


//MARK:- Extensions

extension Int {
    func squared() -> Int {
        return self * self
    }
}

let number = 9
number.squared()

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}

number.isEven



//MARK:- Protocol extensions

let khairis = ["Ahmed", "Abdalla", "Emad", "Amer", "Basher"]
let familia = Set(["Laila", "Abdorhman", "Osama", "Marwa"])

extension Collection {
    func summarize(){
        print("There are \(count) of us.")
        
        for name in self {
            print(name)
        }
    }
}

khairis.summarize()
familia.summarize()


//MARK:- Protocol-oriented programming

protocol Identifiable1 {
    var id: String { get set }
    func identify()
}

extension Identifiable1 {
    func identify() {
        print("My ID id \(id)")
    }
}

struct User1: Identifiable1 {
    var id: String
}

let officialkhairi = User1(id: "officialkhairi")
officialkhairi.identify()
