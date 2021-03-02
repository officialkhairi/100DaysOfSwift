import UIKit

//MARK:- Optional Chaining


func albumReleased(year: Int) -> String? {
    switch year {
    case 2006: return "Taylor Swift"
    case 2008: return "Fearless"
    case 2010: return "Speak Now"
    case 2012: return "Red"
    case 2014: return "1989"
    default: return nil
    }
}

let album = albumReleased(year: 2006)?.uppercased()
print("Album is \(album!)")


//MARK:- Enumeration

enum WeatherType {
    case rain
    case sun
    case snow
    case wind(speed: Int)
    case cloud
}

func getWeatherStatus(weather: WeatherType) -> String? {
    switch weather {
    case .rain, .cloud: return nil
    case .sun: return "Sun and sand"
    case .snow: return "Freezing cold"
    case .wind(let speed) where speed < 10:
        return "meh!"
    case .wind: return "Windyy"
    }
}


//MARK:- struct

struct Person {
    var clothes: String
    var shoes: String
    
    func describe() {
        print("I like wearing \(clothes) with \(shoes)")
    }

}


let ahmed = Person(clothes: "T-shirt", shoes: "Snekers")
let lili = Person(clothes: "Shirt", shoes: "Jordens")

print(ahmed.clothes)
print(lili.shoes)

var liliCopy = lili
liliCopy.shoes = "Flip flops"

print(lili)
print(liliCopy)


//MARK:- Classes

class Coder {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func writeCode() {
        print("\nCoding with swift Yaay!")
    }
}

class SeniorCoder: Coder {
    override func writeCode() {
        print("\nCoding with fun")
    }
}

class CTOCoder: Coder {
    var codingLevel: Int
    
    init(name: String, age: Int, codingLevel: Int) {
        self.codingLevel = codingLevel
        super.init(name: name, age: age)
    }
    
    override func writeCode() {
        print("Heavy coding level is\(codingLevel)/10")
    }
}

var ahmedo = CTOCoder(name: "Ahmed", age: 29, codingLevel: 9)
ahmedo.name
ahmedo.age
ahmedo.writeCode()
