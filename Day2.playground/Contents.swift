import UIKit

//MARK:- Arrays

let ahmed = "ahmed khairi"
let laila = "Lili khairi"
let osama = "7labi khairi"
let abdo = "Abdorhman khairi"

let khairis = [ahmed , abdo, osama, laila]

khairis[3]

//MARK:- Sets

let colors = Set(["red","blue", "green"])
let colorsTwo = Set(["red","blue", "green","red","blue", "green"])


//MARK:- Tuples

var name = (first: "Ahmed", second: "Khairi", age: 25)

name.0
name.first = "laila"
name

//MARK:- Dictionaries

let heights = [
    "Ahmed": 1.77,
    "Osama": 1.80,
    "Abdo": 1.78
]

heights["Abdo"]

//MARK:- Dictionary default values

let favoriteIceCream = [
    "Ahmed": "cockies and carmel",
    "osama": "chocolate"
]

favoriteIceCream["osama"]
favoriteIceCream["laila", default: "strawberry" ]

//MARK:- Creating empty collections

var team = [String: String]()

team["Ahmed"] = "Blue"

var results = [Int]()

var words = Set<String>()
var numbers = Set<Int>()

// deferent syntax to create empty collection

var scores = Dictionary<String, Int>()
var resultss = Array<Int>()

//MARK:- Enumerations

let result = "failure"
let result2 = "failed"
let result3 = "fail"

enum Result {
    case success
    case failure
}

let result4 = Result.failure

//MARK:- Enum associated values

enum Activity {
    case board
    case talking(topic: String)
    case running(distination: String)
    case reading(page: Int)
}

let running = Activity.running(distination: "to the grand beach")


//MARK:- Enum raw values

enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}

let earth = Planet(rawValue: 2)

Planet(rawValue: 3)
