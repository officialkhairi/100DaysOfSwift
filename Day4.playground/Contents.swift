import UIKit

//MARK:- Loops

let count = 1...10

for number in count {
    print("Number is \(number)")
}


let albums = ["Red", "All eyes on me", "1994", "Hittitrd"]

for album in albums {
    print("\(album) in Apple Music")
}

print("Players gonna ")

for _ in 1...5 {
    print("Play")
}

//MARK:- While loops

var number = 1

while number <= 20 {
    print(number)
     number += 1
}

print("Ready or not, here i come!")


//MARK:- Repeat loops
var num = 1

repeat {
    print(num)
    num += 1
} while num <= 20

while false {
    print("print false")
}

repeat{
    print("false repeat")
} while false


//MARK:- Exiting loops

var countDown = 10

while countDown >= 0 {
    print(countDown)
    
    if countDown == 4 {
        print("I'm bored let's go now!")
        break
    }
    
    countDown -= 1
}

print("Blst OFF!")

//MARK:- Exiting multiple loops

outerloop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print("\(i) * \(j) = \(product)")
        if product == 50 {
            print("its a bullseye!\n")
            break outerloop
        }
    }
}

//MARK:- Skipping items

for i in 1...10 {
    if i % 2 == 1 {
        continue
    }
    
    print(i)
}


//MARK:- Infinite loops
var counter = 0
while true {
    
    print(" - ")
    counter += 1
    
    if counter == 273 {
        break
    }
}
