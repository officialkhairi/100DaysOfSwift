import UIKit

//Structures

//MARK:- Creating your own structs

//struct Sport {
//    var name: String
//}

//var football = Sport(name: "FootBall!")
//print(football.name)
//
//football.name = "Freestyle FootBall"
//
//print(football.name)

//MARK:- Computed properties

struct Sport {
    var name: String
    var isOlympicSport: Bool
    
    var olympicStatus: String {
        
        if isOlympicSport {
            return "\(name) is olympic sport"
        } else {
            return "\(name) is not olympic sport"
        }
    }
}


let tennis = Sport(name: "Tennis", isOlympicSport: true)

tennis.olympicStatus


//MARK:- Property observers

struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(amount)% of \(task) has been completed")
        }
    }
}

var progress = Progress(task: "loading data", amount: 0)

progress.amount = 30
progress.amount = 50
progress.amount = 90

//MARK:- Methods

struct City {
    var population: Int
    
    func collectTax() -> Int {
        return population * 1000
    }
}

let rak = City(population: 9_000_000)

rak.collectTax()


//MARK:- Mutating methods

struct Person {
    var name: String
    
    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

var perosn = Person(name: "Ahmed")
perosn.makeAnonymous()
perosn.name

//MARK:- Properties and methods of strings

let string = "Do or do not, there is no try"

string.count
string.uppercased()
string.hasPrefix("Do")
string.sorted()

//MARK:- Properties and methods of arrays

var toys = ["Woody"]

print(toys.count)

toys.append("Buzz")
toys.append("Fizz")
toys.firstIndex(of: "Buzz")
print(toys.sorted())
toys.remove(at: 0)
print(toys.count)
