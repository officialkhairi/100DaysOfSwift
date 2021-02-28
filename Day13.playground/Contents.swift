import UIKit

//MARK:- Arrays

let list: [Any] = [12, "ABCD", true]

//MARK:- Dictionaries

var person = [
                "first": "Taylor",
                "middle": "Alison",
                "last": "Swift",
                "month": "December",
                "website": "taylorswift.com"
            ]

person["middle"]
person["month"]


//MARK:- Loops


for i in 1...10 {
    print("\(i) x 10 is \(i * 10)")
    
}


//MARK:- Switch

let studioAlbums = 5

switch studioAlbums {
case 0...1:
    print("You're just starting out")

case 2...3:
    print("You're a rising star")

case 4...5:
    print("You're world famous!")

default:
    print("Have you done something new?")
}

//MARK:- <#Section Heading#>
