import UIKit

//MARK:- Properties

struct Person {
    var clothes: String {
        willSet {
            updateUI(msg: "I'm changing form \(clothes) to \(newValue)")
        }
        
        didSet {
            updateUI(msg: "I just changed from \(oldValue) to \(clothes)")
        }
    }
}

func updateUI(msg: String) {
    print(msg)
}

var ahmed = Person(clothes: "T-shirt")
ahmed.clothes = "Jacket"

//MARK:- Computed properties

struct Human {
    var age: Int
    
    var ageInDogYear: Int {
        return age * 2
    }
}

let human = Human(age: 27)
print(human.ageInDogYear)


//MARK:- Static properties and methods

struct AppleFanBoy {
    static var codingLanguage = "Swift"
    
    var name: String
    var age: Int
}

let coder = AppleFanBoy(name: "Ahmed khairi", age: 27)
print(AppleFanBoy.codingLanguage)


//MARK:- Polymorphism and typecasting



class Album {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func getPerformance() -> String {
        return "The album \(name) sold alots"
    }
}

class StudioAlbum: Album {
    var studio: String
    
    init(name: String, studio: String) {
        self.studio = studio
        super.init(name: name)
    }
    
    override func getPerformance() -> String {
        return "The Studio album \(name) sold lots"
    }
}

class LiveAlbum: Album {
    var location: String
    
    init(name: String, location: String) {
        self.location = location
        super.init(name: name)
    }
    
    override func getPerformance() -> String {
        return "The Live album \(name) sold lots"
    }
}


var taylorSwift = StudioAlbum(name: "The Castles Studios", studio: "Taylor Swift")
var fearless = StudioAlbum(name: "Aimeeland Studio", studio: "Fearless")
var iTunesLive = LiveAlbum(name: "iTunes Live from SoHo", location: "New York")

let allAlbums = [taylorSwift, fearless, iTunesLive]

for album in allAlbums {
    print(album.getPerformance())
}

print()


//MARK:- Converting types with typecasting


for album in allAlbums {
    print(album.getPerformance())
    
    if let studioAlbum = album as? StudioAlbum {
        print(studioAlbum.studio)
    } else if let liveAlbum = album as? LiveAlbum {
        print(liveAlbum.location)
    }
}

 print("---")

for album in allAlbums as? [LiveAlbum] ?? [LiveAlbum]() {
    print(album.location)
}


//MARK:- Closures

let uv = UIView()

UIView.animate(withDuration: 0.5, animations: {
    uv.alpha = 0
})

//MARK:- Trailing closures

UIView.animate(withDuration: 0.5) {
    uv.alpha = 0
}
