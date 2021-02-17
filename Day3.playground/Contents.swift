import UIKit

//MARK:- Arithmetic operators

let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let differance = firstScore - secondScore

let product = firstScore * secondScore
let divided = firstScore / secondScore

let reminder = 13 % firstScore

//MARK:- Operator overloading

let meningOfLife = 42
let doubleMeaning = 42 + 42

let fakers = "Fakers gonna "
let action = fakers + "fake"

let firstHalf = ["Marwa", "Abdalla", "Amer", "Emad", "Basher"]
let secondHalf = ["Ahmed", "Abdorahrman", "Osama", "Laila"]
let khairies = firstHalf + secondHalf
khairies.count

//MARK:- Compound assignment operators

var score = 95
score -= 5

var quote = "What doesn't kill you make you "
quote += "Stronger"

//MARK:- Comparison operators

let score1 = 6
let score2 = 4

score1 == score2
score1 != score2

score1 < score2
score1 >= score2

"Ahmed" <= "Khairi"

//MARK:- Conditions

let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 2 {
    print("Aces - Lucky!")
} else if firstCard + secondCard == 21 {
    print("BlackJack!")
} else {
    print("Regular cards!")
}

//MARK:- Combining conditions

let age1 = 21
let age2 = 12

if age1 > 18 && age2 > 18 {
    print("Boath over 18")
}

if age1 > 18 || age2 > 18 {
    print("one of them over 18")
}

//MARK:- The ternary operator

print(firstCard == secondCard ? "cards are the same" : "cards are different")

//MARK:- Switch statements

let weather = "Sunny"

switch weather {
case "rain":
    print("bring unmbrella")
case "sunny":
    print("put some sunscreen")
    fallthrough
case "snow":
    print("wrap up worm")
default:
    print("Enjoy your day")
}

//MARK:- Range operators

let scoreTarget = 86

switch scoreTarget {
case 0..<50:
    print("you faild badly.")
case 50...85:
    print("You did OK.")
default:
    print("you did great")
}

