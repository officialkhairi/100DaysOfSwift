import UIKit

// classes

//MARK:- Creating your own classes

class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }

}

let poppy = Dog(name: "chup", breed: "German Shepherd")
poppy.name
poppy.breed

//MARK:- Class inheritance

class Poodle: Dog {
    
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
    
}

//MARK:- Overriding methods


class Dog1 {
    func makeNoise(){
        print("Woof!")
    }
}

class BullDog: Dog1 {
    override func makeNoise() {
        print("Woof Woof!!!!")
    }
}

let doggy = BullDog()

doggy.makeNoise()


//MARK:- Final classes
// when you declare a class as being final, no other class can inherit from it

final class Dogg {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}


//MARK:- Copying objects

//class Player {
//    var name = "Ahmed"
//}

class Player {
    var name = "Jorden"
}

var player = Player()
print(player.name)

var playerCopy = player
playerCopy.name = "Kobe"

print(player.name)


//MARK:- Deinitializers

class Person {
    var name = "Ahmed"
    
    init() {
        print("\(name) is a live!")
    }
    
    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    
    deinit {
        print("No more \(name) KHALAS!")
    }
}

for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}

//MARK:- Mutability

class Singer {
    let name = "Taylor swift"
}

let taylor = Singer()
taylor.name = "Ed sheeran"
taylor.name
