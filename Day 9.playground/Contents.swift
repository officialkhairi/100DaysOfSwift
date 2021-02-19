import UIKit

var str = "Hello, playground"
// structures part two

//MARK:- Initializers

struct User {
    var username: String
    
    init() {
        username = "Anonymous"
        print("Crating a new user")
    }
}


var user = User()
user.username = "officialkhairi"


//MARK:- Referring to the current instance

struct Person1 {
    var name: String
    
    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}



//MARK:- Lazy properties

struct FamilyTree {
    init() {
        print("Creating familia tree")
    }
}

struct Person {
    var name: String
    lazy var familyTree = FamilyTree()
    
    init(name: String) {
        self.name = name
    }
}

var person = Person(name: "Ahmed")
person.familyTree

//MARK:- Static properties and methods

struct Student {
    static var classSize = 0
    var name: String
    
    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}

var ahmed = Student(name: "Ahmed")
var ali = Student(name: "ali")

print(Student.classSize)

//MARK:- Access control

struct Citizen {
    private var id: String
    
    init(id: String) {
        self.id = id
    }
}

var aj = Citizen(id: "werdxcer2w3e23")
//aj.id


//MARK:- Summary

/*
 
 - You can create your own types using structures, which can have their own properties and methods.
 - You can use stored properties or use computed properties to calculate values on the fly.
 - If you want to change a property inside a method, you must mark it as mutating.
 - Initializers are special methods that create structs. You get a memberwise initializer by default, but if you create your own you must give all properties a value.
 - Use the self constant to refer to the current instance of a struct inside a method.
 - The lazy keyword tells Swift to create properties only when they are first used.
 - You can share properties and methods across all instances of a struct using the static keyword.
 - Access control lets you restrict what code can use properties and methods.

 
 */

